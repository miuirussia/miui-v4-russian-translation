.class final Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Values;
.super Ljava/util/AbstractCollection;
.source "CustomConcurrentHashMap.java"


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;)V
    .locals 0
    .parameter

    .prologue
    .line 1817
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Values;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1836
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Values;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->clear()V

    .line 1837
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Values;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1828
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Values;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 1820
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$ValueIterator;

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Values;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$ValueIterator;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1824
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Values;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->size()I

    move-result v0

    return v0
.end method
