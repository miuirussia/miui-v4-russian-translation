.class Lcom/google/common/collect/LinkedListMultimap$MultisetView$1;
.super Ljava/lang/Object;
.source "LinkedListMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic jw:Ljava/util/Iterator;

.field final synthetic vt:Lcom/google/common/collect/LinkedListMultimap$MultisetView;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap$MultisetView;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 618
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$1;->vt:Lcom/google/common/collect/LinkedListMultimap$MultisetView;

    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$1;->jw:Ljava/util/Iterator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$1;->jw:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$1;->jw:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$1;->jw:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 627
    return-void
.end method
