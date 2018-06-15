//NodeMCU智能设备，盒子，防雨淋型(垂直安装)
//Author:openthings@163.com，
//copyright 2015-2025.
//打印时注意比例变化，并且旋转向上。
//避免上部打印时无支撑塌陷。
//盖子单独打印，或放为两个模型。

//常量定义
athick=0.5;	//盖子厚度
bthick=0.10;	//盒壁厚度
bwidth=4.0;	//内径净宽
bhight=1.5;	//内径净高

blong_inter=5.5;//内径净长
//外径长度＝底厚＋内径＋挡格＋盖子厚度
blong=bthick+blong_inter+bthick+athick;

//文字或图标标识
//translate([-2,0,0])
//scale([1, 1, 0.1])
//  surface(file = "smiley.png", center = true);

//======================================
//盒子体，采用挖空切割方式造型。
difference() {
	//外盒
	translate([0,0,0])
	{	color([0.8,0.8,0.8])
		cube([blong,bwidth+bthick*2,
			bhight+bthick*2]);
	}
	//内盒，挖空。
	translate([bthick,bthick,bthick])
	{	color([0.2,0.8,0.8])
		cube([blong+1,bwidth,bhight]);
	}
	//底部，凹陷标识，可贴标签。
	translate([blong-2,1.8,bhight+bthick+0.08])
	{	color([0.6,0.6,0.6])
		cube([1.5,bwidth*0.5,0.1]);
	}
}

//底部加强，在内部形成边角挡格。
	translate([bthick,bthick,bthick])
	{	color([0.2,0.5,0.2])
		cube([bthick,bwidth,bthick]);
	}
	translate([bthick,bthick,bhight])
	{	color([0.2,0.5,0.2])
		cube([bthick,bwidth,bthick]);
	}
	translate([bthick,bthick,bthick])
	{	color([0.2,0.5,0.2])
		cube([bthick,bthick,bhight]);
	}
	translate([bthick,bwidth,bthick])
	{	color([0.2,0.5,0.2])
		cube([bthick,bthick,bhight]);
	}

//盖子挡格。
	translate([blong-athick,bthick,bthick])
	{	color([0.2,0.5,0.2])
		cube([bthick,bwidth,bthick]);
	}
	translate([blong-athick,bthick,bhight])
	{	color([0.2,0.5,0.2])
		cube([bthick,bwidth,bthick]);
	}

//======================================
//盖子，单独打印。嵌入盒子内部，注意留公差。
translate([5.75,0.0,0]){
//translate([0,0,2]){
difference() {
	//盖子，挖空。
	translate([0,bthick,bthick])
	{	color([0.5,0.5,0.5])
		cube([athick-0.05,bwidth,bhight]);
	}
	translate([0.2,bthick*2,bthick*2])
	{	color([0.6,0.3,0.8])
		cube([athick+1,bwidth-bthick*2,
				bhight-bthick*2]);
	}

	//通风口，挖空。================
	//左侧出风口
	translate([-0.1,0.5,0.4])
	{	color([1,0.8,0.8])
		cube([0.8,0.3,0.9]);
	}
	translate([-0.1,1,0.4])
	{	color([1,0.8,0.8])
		cube([0.8,0.3,0.9]);
	}
	//右侧进风口
	translate([-0.1,3,0.4])
	{	color([1,0.8,0.8])
		cube([0.8,0.3,0.9]);
	}
	translate([-0.1,3.5,0.4])
	{	color([1,0.8,0.8])
		cube([0.8,0.3,0.9]);
	}
	//USB接口，挖空。
	translate([-0.1,1.75,1.0])
	{	color([1,0.8,0.8])
		cube([0.8,0.8,0.3]);
	}
}
}