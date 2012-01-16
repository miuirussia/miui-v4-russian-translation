.class Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1$1;
.super Lcom/google/common/collect/Multisets$AbstractEntry;
.source "LinkedListMultimap.java"


# instance fields
.field final synthetic hn:Ljava/lang/Object;

.field final synthetic ho:Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 685
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1$1;->ho:Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;

    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1$1;->hn:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public X()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1$1;->hn:Ljava/lang/Object;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 690
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1$1;->ho:Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;->iS:Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;->vt:Lcom/google/common/collect/LinkedListMultimap$MultisetView;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->aL:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->c(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1$1;->hn:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/collect/Multiset;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
