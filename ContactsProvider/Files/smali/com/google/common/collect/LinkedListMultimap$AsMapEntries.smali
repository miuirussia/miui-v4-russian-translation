.class Lcom/google/common/collect/LinkedListMultimap$AsMapEntries;
.super Ljava/util/AbstractSet;
.source "LinkedListMultimap.java"


# instance fields
.field final synthetic aL:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .locals 0
    .parameter

    .prologue
    .line 808
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries;->aL:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 808
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 817
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries;->aL:Lcom/google/common/collect/LinkedListMultimap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$1;)V

    .line 818
    new-instance v1, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;-><init>(Lcom/google/common/collect/LinkedListMultimap$AsMapEntries;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries;->aL:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->c(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->t()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
