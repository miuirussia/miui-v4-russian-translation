.class final Lcom/google/common/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "CustomConcurrentHashMap.java"


# instance fields
.field final key:Ljava/lang/Object;

.field final synthetic this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1751
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    .line 1752
    iput-object p2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;->key:Ljava/lang/Object;

    .line 1753
    iput-object p3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;->value:Ljava/lang/Object;

    .line 1754
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1761
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 1773
    if-nez p1, :cond_0

    .line 1774
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1776
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1777
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;->value:Ljava/lang/Object;

    .line 1778
    return-object v0
.end method
