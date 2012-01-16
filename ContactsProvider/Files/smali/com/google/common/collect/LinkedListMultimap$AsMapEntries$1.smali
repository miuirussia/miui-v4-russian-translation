.class Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;
.super Ljava/lang/Object;
.source "LinkedListMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic iR:Ljava/util/Iterator;

.field final synthetic vW:Lcom/google/common/collect/LinkedListMultimap$AsMapEntries;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap$AsMapEntries;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 818
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;->vW:Lcom/google/common/collect/LinkedListMultimap$AsMapEntries;

    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;->iR:Ljava/util/Iterator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;->iR:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2

    .prologue
    .line 824
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;->iR:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 825
    new-instance v1, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1$1;-><init>(Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;Ljava/lang/Object;)V

    return-object v1
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;->iR:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 838
    return-void
.end method
