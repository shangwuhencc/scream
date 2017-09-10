function test_v_a(a,Tmax,I,Bmax,Cmax)
    T = a(:,1);
    K = 12;
    %Tmax = 100.0;

        
    figure(1);
    subplot(2,1,1);
    plot(T,a(:,2),T,a(:,4)); 
    set(gca,'FontSize',12);grid on;
    set(gca,'XTickLabel',[]);    
    axis([0 Tmax 0 0.5]);grid on;
    title('qdel[s]');
    
    subplot(2,1,2);
    plot(T,a(:,6),T,a(:,7),T,a(:,9)*2000);
    set(gca,'FontSize',12);grid on;
    axis([0 Tmax 0 Cmax]);grid on;    
    title('CWND & in flight [byte]');    
    xlabel('T [s]');

    if  1
    figure(2);
    subplot(2,1,1);
    plot(T,a(:,10)); 
    set(gca,'FontSize',12);grid on;
    axis([0 Tmax 0 0.2]);grid on;
    set(gca,'XTickLabel',[]);
    title('RTP queue delay');
    subplot(2,1,2);
    plot(T,a(:,11),T,a(:,13),T,a(:,14));
    set(gca,'FontSize',12);grid on;
    axis([0 Tmax 0 Bmax(1)]);grid on;
    title('Bitrate [kbps]');    
    legend('Target','Transmitted', 'Acked');
    xlabel('T [s]');
    end
    if I==1
    K = 7;    
    figure(3);
    subplot(2,1,1);
    plot(T,a(:,10+K)); 
    set(gca,'FontSize',12);grid on;
    axis([0 Tmax 0 0.2]);grid on;
    set(gca,'XTickLabel',[]);
    title('RTP queue delay');
    subplot(2,1,2);
    plot(T,a(:,11+K),T,a(:,13+K),T,a(:,14+K));
    set(gca,'FontSize',12);grid on;
    axis([0 Tmax 0 Bmax(2)]);grid on;
    title('Bitrate [kbps]');    
    legend('Target','Transmitted', 'Acked');
    xlabel('T [s]');
    end
    