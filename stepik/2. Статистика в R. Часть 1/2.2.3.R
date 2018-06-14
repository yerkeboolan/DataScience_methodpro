df4 <- read.table("dataset_11504_15 (2).txt")
    ifelse((bartlett.test(V1~V2, read.table("dataset_11504_15 (2).txt"))[3]>0.05),
       t.test(V1~V2,read.table("dataset_11504_15 (2).txt"), var.equal = TRUE)[3],
       wilcox.test(V1~V2,read.table("dataset_11504_15 (2).txt"))[3])