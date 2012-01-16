.class Lcom/google/common/collect/LinkedListMultimap$4$1;
.super Ljava/lang/Object;
.source "LinkedListMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic jw:Ljava/util/Iterator;

.field final synthetic rk:Lcom/google/common/collect/LinkedListMultimap$4;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap$4;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 776
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$4$1;->rk:Lcom/google/common/collect/LinkedListMultimap$4;

    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$4$1;->jw:Ljava/util/Iterator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$4$1;->jw:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 776
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$4$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2

    .prologue
    .line 782
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$4$1;->jw:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 783
    new-instance v1, Lcom/google/common/collect/LinkedListMultimap$4$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/LinkedListMultimap$4$1$1;-><init>(Lcom/google/common/collect/LinkedListMultimap$4$1;Lcom/google/common/collect/LinkedListMultimap$Node;)V

    return-object v1
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$4$1;->jw:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 800
    return-void
.end method
