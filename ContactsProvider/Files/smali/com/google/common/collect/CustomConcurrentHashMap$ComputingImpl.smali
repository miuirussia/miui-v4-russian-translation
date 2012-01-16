.class Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;
.super Lcom/google/common/collect/CustomConcurrentHashMap$Impl;
.source "CustomConcurrentHashMap.java"


# static fields
.field static final serialVersionUID:J


# instance fields
.field final computer:Lcom/google/common/base/Function;

.field final computingStrategy:Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;Lcom/google/common/collect/CustomConcurrentHashMap$Builder;Lcom/google/common/base/Function;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1990
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;Lcom/google/common/collect/CustomConcurrentHashMap$Builder;)V

    .line 1991
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->computingStrategy:Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;

    .line 1992
    iput-object p3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->computer:Lcom/google/common/base/Function;

    .line 1993
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2006
    .line 2008
    if-nez p1, :cond_0

    .line 2009
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2012
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->u(Ljava/lang/Object;)I

    move-result v5

    .line 2013
    invoke-virtual {p0, v5}, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->X(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v6

    .line 2015
    :cond_1
    :goto_0
    invoke-virtual {v6, p1, v5}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->d(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 2016
    if-nez v3, :cond_3

    .line 2018
    invoke-virtual {v6}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 2021
    :try_start_0
    invoke-virtual {v6, p1, v5}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->d(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 2022
    if-nez v0, :cond_7

    .line 2025
    iget v0, v6, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    .line 2026
    add-int/lit8 v3, v0, 0x1

    iget v4, v6, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->threshold:I

    if-le v0, v4, :cond_2

    .line 2027
    invoke-virtual {v6}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->expand()V

    .line 2029
    :cond_2
    iget-object v4, v6, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2030
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v7, v5, v0

    .line 2031
    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2032
    iget v8, v6, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v6, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 2033
    iget-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->computingStrategy:Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;

    invoke-interface {v8, p1, v5, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;->a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2034
    invoke-virtual {v4, v7, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2035
    iput v3, v6, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, v0

    move v0, v1

    .line 2038
    :goto_1
    invoke-virtual {v6}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .line 2041
    if-eqz v0, :cond_3

    .line 2045
    :try_start_1
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->computingStrategy:Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->computer:Lcom/google/common/base/Function;

    invoke-interface {v0, p1, v3, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/base/Function;)Ljava/lang/Object;

    move-result-object v0

    .line 2046
    if-nez v0, :cond_5

    .line 2047
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "compute() returned null unexpectedly"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2053
    :catchall_0
    move-exception v0

    .line 2054
    invoke-virtual {v6, v3, v5}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->f(Ljava/lang/Object;I)Z

    throw v0

    .line 2038
    :catchall_1
    move-exception v0

    invoke-virtual {v6}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v0

    :cond_3
    move v4, v2

    .line 2065
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->computingStrategy:Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;

    invoke-interface {v0, v3}, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2066
    if-nez v0, :cond_4

    .line 2068
    invoke-virtual {v6, v3, v5}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->f(Ljava/lang/Object;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2077
    if-eqz v4, :cond_1

    .line 2078
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 2077
    :cond_4
    if-eqz v4, :cond_5

    .line 2078
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_5
    return-object v0

    .line 2072
    :catch_0
    move-exception v0

    move v4, v1

    .line 2074
    goto :goto_2

    .line 2077
    :catchall_2
    move-exception v0

    if-eqz v4, :cond_6

    .line 2078
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_6
    throw v0

    :cond_7
    move-object v3, v0

    move v0, v2

    goto :goto_1
.end method
