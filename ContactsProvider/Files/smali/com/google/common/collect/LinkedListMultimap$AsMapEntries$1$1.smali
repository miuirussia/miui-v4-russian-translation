.class Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1$1;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "LinkedListMultimap.java"


# instance fields
.field final synthetic hn:Ljava/lang/Object;

.field final synthetic lr:Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 825
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1$1;->lr:Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;

    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1$1;->hn:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public dP()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 831
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1$1;->lr:Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;->vW:Lcom/google/common/collect/LinkedListMultimap$AsMapEntries;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries;->aL:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1$1;->hn:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/LinkedListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1$1;->hn:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 825
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1$1;->dP()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
