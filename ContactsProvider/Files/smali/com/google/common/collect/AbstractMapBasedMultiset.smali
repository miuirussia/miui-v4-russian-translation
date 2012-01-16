.class abstract Lcom/google/common/collect/AbstractMapBasedMultiset;
.super Lcom/google/common/collect/AbstractMultiset;
.source "AbstractMapBasedMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1f3c5464cd7009c6L


# instance fields
.field private transient size:J

.field private transient vu:Ljava/util/Map;

.field private transient vv:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 2
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultiset;-><init>()V

    .line 64
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->vu:Ljava/util/Map;

    .line 65
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/AbstractMapBasedMultiset;Ljava/lang/Object;Ljava/util/Map;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/AbstractMapBasedMultiset;->a(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/Object;Ljava/util/Map;)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 320
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 321
    if-nez v0, :cond_0

    move v0, v1

    .line 326
    :goto_0
    return v0

    .line 324
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    .line 325
    iget-wide v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/common/collect/AbstractMapBasedMultiset;J)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    return-wide v0
.end method

.method static synthetic a(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->vu:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/google/common/collect/AbstractMapBasedMultiset;)J
    .locals 4
    .parameter

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    return-wide v0
.end method

.method static synthetic b(Lcom/google/common/collect/AbstractMapBasedMultiset;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    return-wide p1
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->vu:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 228
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;I)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 263
    if-nez p2, :cond_1

    .line 264
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->a(Ljava/lang/Object;)I

    move-result v2

    .line 285
    :cond_0
    :goto_0
    return v2

    .line 266
    :cond_1
    if-lez p2, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "occurrences cannot be negative: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->vu:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 269
    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 276
    if-le v1, p2, :cond_3

    .line 283
    :goto_2
    neg-int v2, p2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 284
    iget-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    int-to-long v4, p2

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    move v2, v1

    .line 285
    goto :goto_0

    :cond_2
    move v0, v2

    .line 266
    goto :goto_1

    .line 280
    :cond_3
    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->vu:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move p2, v1

    goto :goto_2
.end method

.method public c(Ljava/lang/Object;I)I
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 241
    if-nez p2, :cond_0

    .line 242
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->a(Ljava/lang/Object;)I

    move-result v2

    .line 259
    :goto_0
    return v2

    .line 244
    :cond_0
    if-lez p2, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "occurrences cannot be negative: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 246
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->vu:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 248
    if-nez v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->vu:Ljava/util/Map;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :goto_2
    iget-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    int-to-long v3, p2

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    goto :goto_0

    :cond_1
    move v0, v2

    .line 244
    goto :goto_1

    .line 252
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 253
    int-to-long v5, v4

    int-to-long v7, p2

    add-long/2addr v5, v7

    .line 254
    const-wide/32 v7, 0x7fffffff

    cmp-long v3, v5, v7

    if-gtz v3, :cond_3

    move v3, v1

    :goto_3
    const-string v7, "too many occurrences: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v3, v7, v1}, Lcom/google/common/base/Preconditions;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 256
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move v2, v4

    goto :goto_2

    :cond_3
    move v3, v2

    .line 254
    goto :goto_3
.end method

.method c(Ljava/util/Map;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->vu:Ljava/util/Map;

    .line 75
    return-void
.end method

.method cj()Ljava/util/Set;
    .locals 2

    .prologue
    .line 332
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->vu:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset;Ljava/util/Map;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->vv:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;

    .line 90
    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset;Lcom/google/common/collect/AbstractMapBasedMultiset$1;)V

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->vv:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;

    .line 93
    :cond_0
    return-object v0
.end method

.method fs()Ljava/util/Map;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->vu:Ljava/util/Map;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 179
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset;)V

    return-object v0
.end method

.method public size()I
    .locals 4

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
