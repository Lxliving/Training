//机构和专家切换效果
function chooseI(i) {
    var jian=document.getElementsByClassName('_1_jianjie');
    var chooseone=document.getElementsByClassName('youxiu_up_exp_or_org');
    var more=document.getElementsByClassName('youxiu_up_more');
    var intro=document.getElementsByClassName('_3_youxiu_intro');
    var shili=document.getElementsByClassName('_4_shili');

    if (i == 1){
        /*点击的是专家,以下是显示*/
        jian[0].className="_1_jianjie";
        chooseone[0].className="youxiu_up_exp_or_org";
        more[0].className="youxiu_up_more";
        intro[0].className="_3_youxiu_intro";
        shili[0].className="_4_shili";

        /*不显示*/
        jian[1].className="_1_jianjie Notdisplay";
        chooseone[1].className="youxiu_up_exp_or_org visited";
        more[1].className="youxiu_up_more Notdisplay";
        intro[1].className="_3_youxiu_intro Notdisplay";
        shili[1].className="_4_shili Notdisplay";
    }
    else{
        /*点击的是机构，i=0*/
        jian[1].className="_1_jianjie";
        chooseone[1].className="youxiu_up_exp_or_org";
        more[1].className="youxiu_up_more";
        intro[1].className="_3_youxiu_intro";
        shili[1].className="_4_shili";

        /*不显示*/
        jian[0].className="_1_jianjie Notdisplay";
        chooseone[0].className="youxiu_up_exp_or_org visited";
        more[0].className="youxiu_up_more Notdisplay";
        intro[0].className="_3_youxiu_intro Notdisplay";
        shili[0].className="_4_shili Notdisplay";
    }
}