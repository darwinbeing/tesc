#!/usr/bin/env python
import sys
import pcbnew

# filename=sys.argv[1]

# board = pcbnew.LoadBoard(filename)

board = pcbnew.GetBoard()

for module in board.GetModules():
    # print("* Module: %s" % module.GetReference())
    module.Value().SetVisible(False)      # set Value as Hidden
    module.Reference().SetVisible(True)   # set Reference as Visible

    # os.chdir(os.path.dirname(os.path.abspath(board.GetFileName())))


    module.Reference().SetTextWidth(pcbnew.FromMils(20))
    module.Reference().SetTextHeight(pcbnew.FromMils(20))
    module.Reference().SetThickness(pcbnew.FromMils(4))

    # if(m.Value().GetText().split('_')[0]=="MountingHole") and frame.t5.GetValue():
    if(module.Reference().GetText() == "P11"):
        module.Value().SetVisible(False)
        module.Reference().SetVisible(False)


    if(module.Value().GetText().split('_')[0]=="MountingHole"):
        module.Reference().SetVisible(False)
        module.SetLocked(True)

    if(module.Reference().GetText()[0:2]=="TP"):
        module.Reference().SetVisible(False)
        module.Value().SetVisible(True)

    module.Value().SetTextWidth(pcbnew.FromMils(20))
    module.Value().SetTextHeight(pcbnew.FromMils(20))
    module.Value().SetThickness(pcbnew.FromMils(4))

    # remove existing text
    drawings = module.GraphicalItems()
    for item in drawings:
        if isinstance (item, pcbnew.TEXTE_MODULE):
            # if (item.GetText()=="%R"):
            if True:
                print("* Module: %s Text: %s" % (module.GetReference(), item.GetText()))
                # italic, orientation
                module.GraphicalItems().Remove(item)

pcbnew.Refresh()
pcbnew.SaveBoard(board.GetFileName(), board)

# pcbnew.SaveBoard("mod_"+filename, board)
