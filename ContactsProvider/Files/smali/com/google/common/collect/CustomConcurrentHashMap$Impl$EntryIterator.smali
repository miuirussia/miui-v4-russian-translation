.class final Lcom/google/common/collect/CustomConcurrentHashMap$Impl$EntryIterator;
.super Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;)V
    .locals 0
    .parameter

    .prologue
    .line 1782
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$EntryIterator;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1782
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 1786
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$EntryIterator;->em()Lcom/google/common/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;

    move-result-object v0

    return-object v0
.end method
