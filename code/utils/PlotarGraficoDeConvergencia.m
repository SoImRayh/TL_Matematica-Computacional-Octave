function PlotarGraficoDeConvergencia(xs, x_label, y_label, g_title)

    plot(1:length(xs), xs, "linewidth", 3);
    set(gca, 'fontsize', 30);
    grid on;
    xlabel(x_label);
    ylabel(y_label);
    title(g_title)
    xlim([1 length(xs)]);

end
