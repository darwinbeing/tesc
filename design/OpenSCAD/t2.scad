//RaspBerry B+外壳
//注意：树莓派其它版本有所不同，需要修改，否则装不进去哟！
//Author:openthings@163.com.
//copyright 2015-2025.

/*Changelog:
2015-03-05:初步模型。
2015-03-14:修改USB和HDMI的位置,底侧的厚度。
*/

//常量定义
bthick=0.1;    //盒壁厚度
bwidth=5.8;    //内径净宽
bhight=2.5;    //内径净高

blong_inter=11.0;        //内径净长
//外径长度＝底厚＋内径＋挡格＋盖子厚度
blong=bthick+blong_inter+bthick*4;


//======================================
//盒子体，采用挖空切割方式造型。
difference() {
    //外盒
    translate([0,0,0])
    {    color([0.8,0.8,0.8])
        cube([blong,bwidth+bthick*4,
            bhight+bthick*3+0.05]);
    }
    //内盒，挖空。
    translate([bthick*2,bthick*2,bthick])
    {    color([0.2,0.8,0.8])
        cube([blong-bthick*5,bwidth,bhight+1]);
    }

    //放置盖子的凹槽。
    translate([bthick,bthick,bhight+0.05])
    {    color([0.5,0.5,0.5])
        cube([blong_inter+bthick*3,
            bwidth+bthick*2,bthick*5]);
    }

    //通风孔。
    //右侧
    translate([0,bwidth+bthick*2,0])
    rotate([90,0,0])
    for (i=[0:12],j=[0:3])
    {    color([0.8,0.2,0.2])
        translate([1.1+i*0.5,0.5+j*0.5,-0.3])
        cylinder(h = 0.4, r = 0.15,$fn=36);
    }
    //左侧
    rotate([90,0,0])
    for (i=[0:12],j=[0:1])
    {    color([0.8,0.2,0.2])
        translate([1.1+i*0.5,1.6+j*0.5,-0.3])
        cylinder(h = 0.4, r = 0.15,$fn=36);
    }

    //MicroUSB接口
    translate([1.0,-0.1,0.5])
    {    color([0.2,0.8,0.8])
        cube([1,0.8,0.35]);
    }
    //HDMI接口
    translate([2.8,-0.1,0.5])
    {    color([0.2,0.8,0.8])
        cube([1.6,0.6,0.6]);
    }
    //音频接口
    translate([5.4,-0.1,0.3])
    {    color([0.2,0.8,0.8])
        cube([0.8,0.6,0.8]);
    }


    //接线面板================
    translate([blong-0.3,0.1,0]){
    translate([bthick*2,bthick*2,bthick*2])
    {    color([0.6,0.3,0.8])
        cube([bthick+1,bwidth-bthick*2,
                bhight-bthick*5]);
    }

    //网线口。
    translate([-0.1,0.65,0.4])
    {    color([1,0.8,0.8])
        cube([1.0,1.2,1.2]);
    }
    //USB接口，挖空。
    translate([-0.1,2.4,0.4])
    {    color([1,0.8,0.8])
        cube([0.8,1.45,1.6]);
    }
    translate([-0.1,4.15,0.4])
    {    color([1,0.8,0.8])
        cube([0.8,1.45,1.6]);
    }

  }
}

//底部加强，在内部形成边角挡格。
//上部
translate([bthick*2,bthick*2,bhight-bthick+0.05])
{    color([0.2,0.5,0.2])
    cube([bthick,bwidth,bthick]);
}
//底部
translate([bthick*2,bthick*2,bthick])
{    color([0.2,0.5,0.2])
    cube([bthick,bwidth,bthick]);
}

//底部,USB接口垫片
translate([bthick*2,bthick*2,bthick])
{    color([0.2,0.5,0.2])
    cube([2.2,bthick*5,bthick*2]);
}

//======================================
//盖子，单独打印。嵌入盒子内部，注意留公差。
translate([0,-6.2,0]){
//translate([bthick,bthick+0.05,
//    bhight+bthick+0.05]){ 
    difference() {
    //盖子，挖空。
    {    color([0.5,0.6,0.6])
        cube([blong_inter+bthick*3-0.04,
            bwidth+bthick*2-0.04,bthick*1.5]);
    }
    //屏幕区域,挖空。
    translate([1.1,bthick*4-0.04,-0.1])
    {    color([0.5,0.6,0.6])
        cube([6.8,5.2,bthick+0.2]);
    }
    //面板，装饰圆孔。
    //rotate([90,0,0])
    for (i=[0:7],j=[0:15])
    {    color([0.8,0.2,0.2])
        translate([8.5+i*0.3,0.65+j*0.3,-0.2])
        cylinder(h = 0.6, r = 0.1,$fn=36);
    }

      }

    translate([0,0.0,bthick])
    {    color([0.8,0.6,0.6])
        cube([0.1,bwidth+bthick*2-0.04,
            bthick*1.5]);
    }
    translate([blong_inter+bthick*2-0.04,0,bthick])
    {    color([0.8,0.6,0.6])
        cube([0.1,bwidth+bthick*2-0.04,
                bthick*1.5]);
    }

    translate([0,0,bthick])
    {    color([0.8,0.6,0.6])
        cube([blong_inter+bthick*3-0.04,0.1,
            bthick*1.5]);
    }
    translate([0,bwidth+bthick-0.04,bthick])
    {    color([0.8,0.6,0.6])
        cube([blong_inter+bthick*3-0.04,0.1,
            bthick*1.5]);
    }

}