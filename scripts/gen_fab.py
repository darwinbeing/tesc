#!/usr/bin/env python

import sys
from pcbnew import *
filename=sys.argv[1]
board = LoadBoard(filename)
plotDir = "plot/"
pctl = PLOT_CONTROLLER(board)
popt = pctl.GetPlotOptions()
popt.SetOutputDirectory(plotDir)

# Set some important plot options:
popt.SetPlotFrameRef(False)     #do not change it
popt.SetPlotPadsOnSilkLayer(False)
popt.SetLineWidth(FromMM(0.1))
popt.SetPlotValue(True)
popt.SetPlotReference(True)
popt.SetPlotInvisibleText(False)
popt.SetPlotViaOnMaskLayer(False)
popt.SetUseAuxOrigin(False)

popt.SetAutoScale(False)        #do not change it
popt.SetScale(1)                #do not change it
popt.SetMirror(False)
popt.SetUseGerberAttributes(True)
popt.SetUseGerberProtelExtensions(True)
popt.SetExcludeEdgeLayer(False);
popt.SetUseAuxOrigin(False)

# This by gerbers only (also the name is truly horrid!)
popt.SetSubtractMaskFromSilk(True)

# Once the defaults are set it become pretty easy...
# I have a Turing-complete programming language here: I'll use it...
# param 0 is a string added to the file base name to identify the drawing
# param 1 is the layer ID
# param 2 is a comment
plot_plan = [
    ( "F.Cu", F_Cu, "Top layer" ),
    ("GND.Cu", In1_Cu, "Inner1"),
    ("PWR.Cu", In2_Cu, "Inner2"),
    ( "B.Cu", B_Cu, "Bottom layer" ),
    ( "F.Paste", F_Paste, "Paste top" ),
    ( "B.Paste", B_Paste, "Paste Bottom" ),
    ( "F.SilkS", F_SilkS, "Silk top" ),
    ( "B.SilkS", B_SilkS, "Silk top" ),
    ( "F.Mask", F_Mask, "Mask top" ),
    ( "B.Mask", B_Mask, "Mask bottom" ),
    ( "Edge.Cuts", Edge_Cuts, "Edges" ),
]


for layer_info in plot_plan:
    pctl.SetLayer(layer_info[1])
    pctl.OpenPlotfile(layer_info[0], PLOT_FORMAT_GERBER, layer_info[2])
    print 'plot %s' % pctl.GetPlotFileName()
    if pctl.PlotLayer() == False:
        print "plot error"

#generate internal copper layers, if any
# lyrcnt = board.GetCopperLayerCount();

# for innerlyr in range ( 1, lyrcnt-1 ):
#     pctl.SetLayer(innerlyr)
#     lyrname = 'inner%s' % innerlyr
#     pctl.OpenPlotfile(lyrname, PLOT_FORMAT_GERBER, "inner")
#     print 'plot %s' % pctl.GetPlotFileName()
#     if pctl.PlotLayer() == False:
#         print "plot error"


# At the end you have to close the last plot, otherwise you don't know when
# the object will be recycled!
pctl.ClosePlot()

# Fabricators need drill files.
# sometimes a drill map file is asked (for verification purpose)
drlwriter = EXCELLON_WRITER( board )
drlwriter.SetMapFileFormat( PLOT_FORMAT_PDF )

mirror = False
minimalHeader = False
offset = wxPoint(0,0)
# False to generate 2 separate drill files (one for plated holes, one for non plated holes)
# True to generate only one drill file
mergeNPTH = False
# mergeNPTH = True
drlwriter.SetOptions( mirror, minimalHeader, offset, mergeNPTH )

metricFmt = True
drlwriter.SetFormat( metricFmt, EXCELLON_WRITER.DECIMAL_FORMAT, 3, 3 )
genDrl = True
genMap = False
# print 'create drill and map files in %s' % pctl.GetPlotDirName()
drlwriter.CreateDrillandMapFilesSet( pctl.GetPlotDirName(), genDrl, genMap );

# One can create a text file to report drill statistics
# rptfn = pctl.GetPlotDirName() + 'drill_report.rpt'
# print 'report: %s' % rptfn
# drlwriter.GenDrillReportFile( rptfn );
