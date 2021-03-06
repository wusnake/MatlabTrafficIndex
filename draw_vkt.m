function draw_vkt(AllcongestionProportion,D,SNcongestionProportion,EWcongestionProportion)
%一天的变化图
s0 = 10219;
ys = zeros(24,1);
st = find(AllcongestionProportion==s0*100);
st
ys = AllcongestionProportion(st:st+23,2);
d = 1:1:24;
dd = 0:1:23;
   
       figure(1);
       b = bar(ys);
       set(gca,'xtick',d,'xtickLabel',dd);
       for j=1:1:length(d)
           text(d(j)-0.3,ys(j)+0.2,num2str(roundn(ys(j),-2)));
       end
       title('2017-02-19拥堵里程比例变化图');
       ylim([0 6])
%1平时工作日整个测试区域路网交通指数对比
%    S = 0;
%    for i=1:1:42
%        S = S + D{i}(6);
%    end
%    S
%    d = [1 2 3 4 5 6];
%    y = zeros(6,2);
%    
%    s1 = [90508,90512,90517,91008,91012,91017];
%    for i=1:1:5
%        y(1,1) = y(1,1) + AllcongestionProportion(find(AllcongestionProportion==s1(1)),2);
%        y(2,1) = y(2,1) + AllcongestionProportion(find(AllcongestionProportion==s1(2)),2);
%        y(3,1) = y(3,1) + AllcongestionProportion(find(AllcongestionProportion==s1(3)),2);
%        %y(2,1) = y(2,1) + AllComTrafficIndex(find(AllComTrafficIndex==s1(4)),2);
%        s1(1) = s1(1)+100;
%        s1(2) = s1(2)+100;
%        s1(3) = s1(3)+100;
%    end
%       for i=1:1:2
%        y(4,1) = y(4,1) + AllcongestionProportion(find(AllcongestionProportion==s1(4)),2);
%        y(5,1) = y(5,1) + AllcongestionProportion(find(AllcongestionProportion==s1(5)),2);
%        y(6,1) = y(6,1) + AllcongestionProportion(find(AllcongestionProportion==s1(6)),2);
%        %y(2,1) = y(2,1) + AllComTrafficIndex(find(AllComTrafficIndex==s1(4)),2);
%        s1(4) = s1(4)+100;
%        s1(5) = s1(5)+100;
%        s1(6) = s1(6)+100;
%       end
%       
%      
%    s2 = [92208,92308,92608,92808,92908,92212,92312,92612,92812,92912,92217,92317,92617,92817,92917];
%    for i=1:1:5
%        y(1,2) = y(1,2) + AllcongestionProportion(find(AllcongestionProportion==s2(i)),2);
%        y(2,2) = y(2,2) + AllcongestionProportion(find(AllcongestionProportion==s2(i+5)),2);
%        y(3,2) = y(3,2) + AllcongestionProportion(find(AllcongestionProportion==s2(i+10)),2);
%    end
%    s3 = [92408,92412,92417];
%    for i=1:1:2
%        y(4,2) = y(4,2) + AllcongestionProportion(find(AllcongestionProportion==s3(1)),2);
%        y(5,2) = y(5,2) + AllcongestionProportion(find(AllcongestionProportion==s3(2)),2);
%        y(6,2) = y(6,2) + AllcongestionProportion(find(AllcongestionProportion==s3(3)),2);
%        %y(2,1) = y(2,1) + AllComTrafficIndex(find(AllComTrafficIndex==s1(4)),2);
%        s3(1) = s3(1)+100;
%        s3(2) = s3(2)+100;
%        s3(3) = s3(3)+100;
%    end
%    %2东西方向与南北方向对比，平日17:00-18:00
%    y(1:3,:) = y(1:3,:)/5;
%    y(4:6,:) = y(4:6,:)/2;
%    (y(:,1)-y(:,2))./y(:,1) * 100
%    
%    yy = zeros(3,2);
%    s4 = [90517];
%     for i=1:1:5
%        yy(1,1) = yy(1,1) + AllcongestionProportion(find(AllcongestionProportion==s4(1)),2);
%        yy(2,1) = yy(2,1) + SNcongestionProportion(find(SNcongestionProportion==s4(1)),2);
%        yy(3,1) = yy(3,1) + EWcongestionProportion(find(EWcongestionProportion==s4(1)),2);
%        yy(1,2) = yy(1,2) + AllcongestionProportion(find(AllcongestionProportion==s2(i+10)),2);
%        yy(2,2) = yy(2,2) + SNcongestionProportion(find(SNcongestionProportion==s2(i+10)),2);
%        yy(3,2) = yy(3,2) + EWcongestionProportion(find(EWcongestionProportion==s2(i+10)),2);
%        s4(1) = s4(1)+100;
%    end
%    
%    yy = yy./5;
%    %3区域整个九月交通量变化早高峰，中午，晚高峰
   yyy = zeros(7,4);
   s5 = [1021308,1021312,1021317,10213];
   for i=1:1:7
       for j=1:1:3
        yyy(i,j) = AllcongestionProportion(find(AllcongestionProportion==s5(j)),2);
       end
       yyy(i,4) = s5(4)-10000;
       s5(1:3) = s5(1:3) + 100;
       s5(4) = s5(4) + 1;
      
   end
   %4东西南北细化，三个时间点，实验前后对比
   
   
   %区域整个九月交通指数变化早高峰，中午，晚高峰绘图
   d = 1:1:7;
   for i=1
       figure(i);
       b = bar(yyy(:,i));
       set(gca,'xtick',d,'xtickLabel',yyy(:,4));
       ch = get(b,'children');
       color = [0 0 1;0 0 1;0 0 1;0 0 1;0 0 1;1 1 0;1 1 0];
       set(ch,'FaceVertexCData',color);
       for j=1:1:length(d)
           text(d(j)-0.3,yyy(j,i)+0.1,num2str(roundn(yyy(j,i),-2)));
       end
       title('区域2月13号到2月19号早高峰交通指数变化');
       %ylim([0 5])
   end
%    
%    figure(1);
   %平时工作日整个测试区域路网交通指数对比绘图
%    bar(y);
%    for i =1:length(d)
%          text(d(i)-0.3,y(i,1)+0.3,num2str(y(i,1)));
%          text(d(i)+0.1,y(i,2)+0.3,num2str(y(i,2)));
%    end
%    text(d(2), -0.5, '工作日');
%    text(d(5), -0.5, '周末');
%    title('平日和周末的交通指数');
%    XX = {'8时','12时','17时','8时','12时','17时'};
%    set(gca,'xtick',d,'xtickLabel',XX);

%东西方向与南北方向对比，平日17:00-18:00绘图
% d = [1,2,3]
%     bar(yy);
%     for i =1:length(d)
%           text(d(i)-0.3,yy(i,1)+0.3,num2str(yy(i,1)));
%           text(d(i)+0.1,yy(i,2)+0.3,num2str(yy(i,2)));
%     end
%     title('平日晚高峰交通指数各个方向对比');
%     XX = {'全区域','南北方向','东西方向'};
%     set(gca,'xtick',d,'xtickLabel',XX);
%      ylim([0 8])
   
    
   
   
    %     for j=1:1:42
%        scrsz = get(0,'ScreenSize');
%         figure('Position',scrsz);
%     y = [count(j) count2(j) D{j}(6:10,2)']
%     bar(y);
%     title('交通流量对比');
%     set(gca,'xtick',d,'xtickLabel',XX);
%     set(gca,'YLim',[0 count2(j)+10000]);%Y轴的数据显示范围
%     %set(gcf,'paperpositionmode','auto');
%     %set(gcf,'position',[100,100, 1000, 600]); 
%     
%     
%     for i =1:length(d)
%         text(d(i)-0.2,y(i)+2000,num2str(y(i)));
%     end
%     filename = ['C:\Users\admin\Documents\MATLAB\图\流量_旅行时间\路口流量10：00-16：00\#',num2str(CrossNum(j)),'.jpg']
%     A=getframe(gcf);                                     
% 
%     imwrite(A.cdata,filename)
%     end
end