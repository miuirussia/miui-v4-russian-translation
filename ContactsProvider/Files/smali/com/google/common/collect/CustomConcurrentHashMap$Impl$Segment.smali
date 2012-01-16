.class final Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "CustomConcurrentHashMap.java"


# instance fields
.field volatile count:I

.field modCount:I

.field volatile table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field final synthetic this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

.field threshold:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 764
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 765
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->at(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 766
    return-void
.end method


# virtual methods
.method a(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 1
    .parameter

    .prologue
    .line 777
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->threshold:I

    .line 778
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 779
    return-void
.end method

.method at(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .parameter

    .prologue
    .line 769
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method au(I)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 785
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 786
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method b(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1082
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v3, v1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    .line 1083
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 1085
    :try_start_0
    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    add-int/lit8 v4, v1, -0x1

    .line 1086
    iget-object v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1087
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v6, p2, v1

    .line 1088
    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .line 1090
    :goto_0
    if-eqz v2, :cond_5

    .line 1091
    invoke-interface {v3, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1092
    invoke-interface {v3, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->G(Ljava/lang/Object;)I

    move-result v8

    if-ne v8, p2, :cond_4

    if-eqz v7, :cond_4

    invoke-interface {v3, v7, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1094
    iget-object v7, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v7, v7, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    invoke-interface {v7, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->C(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1095
    if-eq p3, v7, :cond_0

    if-eqz p3, :cond_3

    if-eqz v7, :cond_3

    invoke-interface {v3, v7, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1100
    :cond_0
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 1101
    invoke-interface {v3, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->F(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1102
    :goto_1
    if-eq v1, v2, :cond_2

    .line 1103
    invoke-interface {v3, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1104
    if-eqz v7, :cond_1

    .line 1105
    invoke-interface {v3, v7, v1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1102
    :cond_1
    invoke-interface {v3, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->F(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 1110
    :cond_2
    invoke-virtual {v5, v6, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1111
    iput v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1112
    const/4 v0, 0x1

    .line 1121
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    :goto_2
    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_2

    .line 1090
    :cond_4
    :try_start_1
    invoke-interface {v3, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->F(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 1121
    :cond_5
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v0
.end method

.method public c(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1126
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v3, v1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    .line 1127
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 1129
    :try_start_0
    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    add-int/lit8 v4, v1, -0x1

    .line 1130
    iget-object v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1131
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v6, p2, v1

    .line 1132
    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .line 1134
    :goto_0
    if-eqz v2, :cond_5

    .line 1135
    invoke-interface {v3, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->G(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, p2, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1136
    invoke-interface {v3, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->C(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1137
    if-eq v7, p3, :cond_0

    if-eqz p3, :cond_3

    invoke-interface {v3, v7, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1142
    :cond_0
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 1143
    invoke-interface {v3, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->F(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1144
    :goto_1
    if-eq v1, v2, :cond_2

    .line 1145
    invoke-interface {v3, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1146
    if-eqz v7, :cond_1

    .line 1147
    invoke-interface {v3, v7, v1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1144
    :cond_1
    invoke-interface {v3, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->F(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 1152
    :cond_2
    invoke-virtual {v5, v6, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1153
    iput v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1154
    const/4 v0, 0x1

    .line 1163
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    :goto_2
    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_2

    .line 1134
    :cond_4
    :try_start_1
    invoke-interface {v3, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->F(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 1163
    :cond_5
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v0
.end method

.method clear()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1204
    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v1, :cond_1

    .line 1205
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 1207
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1208
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1209
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1211
    :cond_0
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 1212
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1214
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .line 1217
    :cond_1
    return-void

    .line 1214
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v0
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 823
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v2, v1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    .line 824
    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v1, :cond_2

    .line 825
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->au(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 826
    invoke-interface {v2, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->G(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, p2, :cond_1

    .line 825
    :cond_0
    invoke-interface {v2, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->F(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 830
    :cond_1
    invoke-interface {v2, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 831
    if-eqz v3, :cond_0

    .line 835
    invoke-interface {v2, v3, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 837
    invoke-interface {v2, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->C(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 842
    :cond_2
    return v0
.end method

.method containsValue(Ljava/lang/Object;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 846
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v3, v1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    .line 847
    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v1, :cond_2

    .line 848
    iget-object v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 849
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v5

    move v2, v0

    .line 850
    :goto_0
    if-ge v2, v5, :cond_2

    .line 851
    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_3

    .line 852
    invoke-interface {v3, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->C(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 856
    if-nez v6, :cond_1

    .line 851
    :cond_0
    invoke-interface {v3, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->F(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 860
    :cond_1
    invoke-interface {v3, v6, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 861
    const/4 v0, 0x1

    .line 867
    :cond_2
    return v0

    .line 850
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public d(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 792
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v1, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    .line 793
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v0, :cond_2

    .line 794
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->au(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 795
    invoke-interface {v1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->G(Ljava/lang/Object;)I

    move-result v2

    if-eq v2, p2, :cond_1

    .line 794
    :cond_0
    invoke-interface {v1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->F(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 799
    :cond_1
    invoke-interface {v1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 800
    if-eqz v2, :cond_0

    .line 804
    invoke-interface {v1, v2, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 810
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method e(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v4, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    .line 1044
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 1046
    :try_start_0
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    add-int/lit8 v5, v0, -0x1

    .line 1047
    iget-object v6, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1048
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v7, p2, v0

    .line 1049
    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    .line 1051
    :goto_0
    if-eqz v3, :cond_3

    .line 1052
    invoke-interface {v4, v3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1053
    invoke-interface {v4, v3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->G(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, p2, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {v4, v0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1055
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    invoke-interface {v0, v3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->C(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1059
    iget v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 1060
    invoke-interface {v4, v3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->F(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v1

    move-object v1, v2

    move-object v2, v9

    .line 1061
    :goto_1
    if-eq v2, v3, :cond_1

    .line 1062
    invoke-interface {v4, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1063
    if-eqz v8, :cond_0

    .line 1064
    invoke-interface {v4, v8, v2, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1061
    :cond_0
    invoke-interface {v4, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->F(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 1069
    :cond_1
    invoke-virtual {v6, v7, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1070
    iput v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1077
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    :goto_2
    return-object v0

    .line 1051
    :cond_2
    :try_start_1
    invoke-interface {v4, v3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->F(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    .line 1075
    :cond_3
    const/4 v0, 0x0

    .line 1077
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v0
.end method

.method expand()V
    .locals 11

    .prologue
    .line 973
    iget-object v6, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 974
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v7

    .line 975
    const/high16 v0, 0x4000

    if-lt v7, v0, :cond_0

    .line 1040
    :goto_0
    return-void

    .line 993
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v8, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    .line 994
    shl-int/lit8 v0, v7, 0x1

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->at(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v9

    .line 995
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->threshold:I

    .line 996
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .line 997
    const/4 v0, 0x0

    move v5, v0

    :goto_1
    if-ge v5, v7, :cond_5

    .line 1000
    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1002
    if-eqz v4, :cond_1

    .line 1003
    invoke-interface {v8, v4}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->F(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1004
    invoke-interface {v8, v4}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->G(Ljava/lang/Object;)I

    move-result v0

    and-int v1, v0, v10

    .line 1007
    if-nez v2, :cond_2

    .line 1008
    invoke-virtual {v9, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 997
    :cond_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_2
    move-object v3, v4

    .line 1015
    :goto_2
    if-eqz v2, :cond_3

    .line 1016
    invoke-interface {v8, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->G(Ljava/lang/Object;)I

    move-result v0

    and-int/2addr v0, v10

    .line 1017
    if-eq v0, v1, :cond_6

    move-object v1, v2

    .line 1015
    :goto_3
    invoke-interface {v8, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->F(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    move v1, v0

    goto :goto_2

    .line 1023
    :cond_3
    invoke-virtual {v9, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v0, v4

    .line 1026
    :goto_4
    if-eq v0, v3, :cond_1

    .line 1027
    invoke-interface {v8, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1028
    if-eqz v1, :cond_4

    .line 1029
    invoke-interface {v8, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->G(Ljava/lang/Object;)I

    move-result v2

    and-int/2addr v2, v10

    .line 1030
    invoke-virtual {v9, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1031
    invoke-interface {v8, v1, v0, v4}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v9, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1026
    :cond_4
    invoke-interface {v8, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->F(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    .line 1039
    :cond_5
    iput-object v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    goto :goto_0

    :cond_6
    move v0, v1

    move-object v1, v3

    goto :goto_3
.end method

.method public f(Ljava/lang/Object;I)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v3, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    .line 1169
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 1171
    :try_start_0
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    add-int/lit8 v4, v0, -0x1

    .line 1172
    iget-object v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1173
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v6, p2, v0

    .line 1174
    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    .line 1176
    :goto_0
    if-eqz v2, :cond_3

    .line 1177
    invoke-interface {v3, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->G(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, p2, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1181
    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 1182
    invoke-interface {v3, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->F(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 1183
    :goto_1
    if-eq v1, v2, :cond_1

    .line 1184
    invoke-interface {v3, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1185
    if-eqz v7, :cond_0

    .line 1186
    invoke-interface {v3, v7, v1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1183
    :cond_0
    invoke-interface {v3, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->F(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 1191
    :cond_1
    invoke-virtual {v5, v6, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1192
    iput v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1193
    const/4 v0, 0x1

    .line 1199
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    :goto_2
    return v0

    .line 1176
    :cond_2
    :try_start_1
    invoke-interface {v3, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->F(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    .line 1197
    :cond_3
    const/4 v0, 0x0

    .line 1199
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v0
.end method

.method get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 814
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->d(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 815
    if-nez v0, :cond_0

    .line 816
    const/4 v0, 0x0

    .line 819
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v1, v1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    invoke-interface {v1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->C(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 925
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v2, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    .line 926
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 928
    :try_start_0
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    .line 929
    add-int/lit8 v3, v0, 0x1

    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->threshold:I

    if-le v0, v1, :cond_0

    .line 930
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->expand()V

    .line 933
    :cond_0
    iget-object v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 934
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 936
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .line 939
    :goto_0
    if-eqz v1, :cond_3

    .line 940
    invoke-interface {v2, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 941
    invoke-interface {v2, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->G(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, p2, :cond_2

    if-eqz v6, :cond_2

    invoke-interface {v2, p1, v6}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 947
    invoke-interface {v2, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->C(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 948
    if-eqz p4, :cond_1

    if-eqz v0, :cond_1

    .line 965
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    :goto_1
    return-object v0

    .line 952
    :cond_1
    :try_start_1
    invoke-interface {v2, v1, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 965
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_1

    .line 939
    :cond_2
    :try_start_2
    invoke-interface {v2, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->F(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 958
    :cond_3
    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 959
    invoke-interface {v2, p1, p2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 960
    invoke-interface {v2, v0, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 961
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 962
    iput v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 963
    const/4 v0, 0x0

    .line 965
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v0
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 899
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v3, v1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    .line 900
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 902
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->au(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_2

    .line 903
    invoke-interface {v3, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 904
    invoke-interface {v3, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->G(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, p2, :cond_1

    if-eqz v1, :cond_1

    invoke-interface {v3, p1, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 908
    invoke-interface {v3, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->C(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 909
    if-nez v1, :cond_0

    .line 920
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    :goto_1
    return-object v0

    .line 913
    :cond_0
    :try_start_1
    invoke-interface {v3, v2, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 920
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    move-object v0, v1

    goto :goto_1

    .line 902
    :cond_1
    :try_start_2
    invoke-interface {v3, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->F(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    .line 920
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v0
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 871
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v2, v1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    .line 872
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 874
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->au(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 875
    invoke-interface {v2, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 876
    invoke-interface {v2, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->G(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, p2, :cond_1

    if-eqz v3, :cond_1

    invoke-interface {v2, p1, v3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 880
    invoke-interface {v2, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->C(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 881
    if-nez v3, :cond_0

    .line 894
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    :goto_1
    return v0

    .line 885
    :cond_0
    :try_start_1
    invoke-interface {v2, v3, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 886
    invoke-interface {v2, v1, p4}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 887
    const/4 v0, 0x1

    .line 894
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_1

    .line 874
    :cond_1
    :try_start_2
    invoke-interface {v2, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->F(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 894
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v0
.end method
