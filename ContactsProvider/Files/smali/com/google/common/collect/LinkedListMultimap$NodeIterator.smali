.class Lcom/google/common/collect/LinkedListMultimap$NodeIterator;
.super Ljava/lang/Object;
.source "LinkedListMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic aL:Lcom/google/common/collect/LinkedListMultimap;

.field og:Lcom/google/common/collect/LinkedListMultimap$Node;

.field oh:Lcom/google/common/collect/LinkedListMultimap$Node;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .locals 1
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->aL:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->aL:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->a(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/LinkedListMultimap$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->og:Lcom/google/common/collect/LinkedListMultimap$Node;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    return-void
.end method


# virtual methods
.method public gf()Lcom/google/common/collect/LinkedListMultimap$Node;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->og:Lcom/google/common/collect/LinkedListMultimap$Node;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->r(Ljava/lang/Object;)V

    .line 282
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->og:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->oh:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 283
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->og:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->og:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->og:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 284
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->oh:Lcom/google/common/collect/LinkedListMultimap$Node;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->og:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->gf()Lcom/google/common/collect/LinkedListMultimap$Node;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->oh:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 288
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->aL:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->oh:Lcom/google/common/collect/LinkedListMultimap$Node;

    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedListMultimap;->a(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$Node;)V

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->oh:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 290
    return-void

    .line 287
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
