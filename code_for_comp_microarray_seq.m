figure,hold on
for i=1:461
try
plot(log2(table2array(TableS5(i,2))),log2(table2array(TableS6(ind_micro_seq(i,1),2))),'.k','MarkerSize',12)
end
end
xlim([-3 4])
ylim([-3 4])
S6_S5=[];
for i=1:461
if ~isnan(ind_micro_seq(i,1))
S6_S5=[S6_S5;[table2array(TableS5(i,2)) table2array(TableS6(ind_micro_seq(i,1),2))]];
end
end
[r p]=corrcoef(S6_S5,'rows','pairwise')