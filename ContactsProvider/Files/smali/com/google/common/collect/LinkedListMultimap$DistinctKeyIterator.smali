.class Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;
.super Ljava/lang/Object;
.source "LinkedListMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic aL:Lcom/google/common/collect/LinkedListMultimap;

.field final of:Ljava/util/Set;

.field og:Lcom/google/common/collect/LinkedListMultimap$Node;

.field oh:Lcom/google/common/collect/LinkedListMultimap$Node;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .locals 2
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->aL:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 295
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->aL:Lcom/google/common/collect/LinkedListMultimap;

    invoke-virtual {v1}, Lcom/google/common/collect/LinkedListMultimap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/Maps;->e(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->of:Ljava/util/Set;

    .line 296
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->aL:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->a(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/LinkedListMultimap$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->og:Lcom/google/common/collect/LinkedListMultimap$Node;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->og:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->og:Lcom/google/common/collect/LinkedListMultimap$Node;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->r(Ljava/lang/Object;)V

    .line 304
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->og:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->oh:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 305
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->of:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->oh:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v1, v1, Lcom/google/common/collect/LinkedListMultimap$Node;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->og:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->og:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->og:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 308
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->og:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->of:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->og:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v1, v1, Lcom/google/common/collect/LinkedListMultimap$Node;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->oh:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->oh:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 313
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->aL:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->oh:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v1, v1, Lcom/google/common/collect/LinkedListMultimap$Node;->key:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedListMultimap;->a(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->oh:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 315
    return-void

    .line 312
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
