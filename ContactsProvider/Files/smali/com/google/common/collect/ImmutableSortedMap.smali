.class public Lcom/google/common/collect/ImmutableSortedMap;
.super Lcom/google/common/collect/ImmutableSortedMapFauxverideShim;
.source "ImmutableSortedMap.java"

# interfaces
.implements Ljava/util/SortedMap;


# static fields
.field private static final iM:Ljava/util/Comparator;

.field private static final iN:[Ljava/util/Map$Entry;

.field private static final iO:Lcom/google/common/collect/ImmutableMap;

.field private static final serialVersionUID:J


# instance fields
.field private final transient comparator:Ljava/util/Comparator;

.field private transient cw:Lcom/google/common/collect/ImmutableSet;

.field private final transient fromIndex:I

.field private final transient gQ:[Ljava/util/Map$Entry;

.field private transient gT:Lcom/google/common/collect/ImmutableCollection;

.field private transient iP:Lcom/google/common/collect/ImmutableSortedSet;

.field private final transient toIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    invoke-static {}, Lcom/google/common/collect/Ordering;->eb()Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ImmutableSortedMap;->iM:Ljava/util/Comparator;

    .line 65
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Map$Entry;

    sput-object v0, Lcom/google/common/collect/ImmutableSortedMap;->iN:[Ljava/util/Map$Entry;

    .line 68
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap;

    sget-object v1, Lcom/google/common/collect/ImmutableSortedMap;->iN:[Ljava/util/Map$Entry;

    sget-object v2, Lcom/google/common/collect/ImmutableSortedMap;->iM:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ImmutableSortedMap;-><init>([Ljava/util/Map$Entry;Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/common/collect/ImmutableSortedMap;->iO:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method constructor <init>([Ljava/util/Map$Entry;Ljava/util/Comparator;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 392
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/common/collect/ImmutableSortedMap;-><init>([Ljava/util/Map$Entry;Ljava/util/Comparator;II)V

    .line 393
    return-void
.end method

.method private constructor <init>([Ljava/util/Map$Entry;Ljava/util/Comparator;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMapFauxverideShim;-><init>()V

    .line 383
    check-cast p1, [Ljava/util/Map$Entry;

    .line 384
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap;->gQ:[Ljava/util/Map$Entry;

    .line 385
    iput-object p2, p0, Lcom/google/common/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    .line 386
    iput p3, p0, Lcom/google/common/collect/ImmutableSortedMap;->fromIndex:I

    .line 387
    iput p4, p0, Lcom/google/common/collect/ImmutableSortedMap;->toIndex:I

    .line 388
    return-void
.end method

.method private A(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 655
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->x(Ljava/lang/Object;)I

    move-result v0

    .line 656
    if-ltz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private static a(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 2
    .parameter

    .prologue
    .line 82
    sget-object v0, Lcom/google/common/collect/ImmutableSortedMap;->iM:Ljava/util/Comparator;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {}, Lcom/google/common/collect/ImmutableSortedMap;->cW()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap;

    sget-object v1, Lcom/google/common/collect/ImmutableSortedMap;->iN:[Ljava/util/Map$Entry;

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/ImmutableSortedMap;-><init>([Ljava/util/Map$Entry;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method private static a([Ljava/util/Map$Entry;Ljava/util/Comparator;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 246
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$1;

    invoke-direct {v0, p1}, Lcom/google/common/collect/ImmutableSortedMap$1;-><init>(Ljava/util/Comparator;)V

    .line 252
    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 253
    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/ImmutableSortedMap;)[Ljava/util/Map$Entry;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->gQ:[Ljava/util/Map$Entry;

    return-object v0
.end method

.method static synthetic b(Lcom/google/common/collect/ImmutableSortedMap;)I
    .locals 1
    .parameter

    .prologue
    .line 54
    iget v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->fromIndex:I

    return v0
.end method

.method private static b([Ljava/util/Map$Entry;Ljava/util/Comparator;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 257
    const/4 v0, 0x1

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 258
    add-int/lit8 v1, v0, -0x1

    aget-object v1, p0, v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    aget-object v2, p0, v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/common/collect/ImmutableSortedSet;->a(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_0

    .line 260
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate keys in mappings "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    aget-object v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, p0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 257
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/google/common/collect/ImmutableSortedMap;)I
    .locals 1
    .parameter

    .prologue
    .line 54
    iget v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->toIndex:I

    return v0
.end method

.method static synthetic c([Ljava/util/Map$Entry;Ljava/util/Comparator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->a([Ljava/util/Map$Entry;Ljava/util/Comparator;)V

    return-void
.end method

.method public static cW()Lcom/google/common/collect/ImmutableSortedMap;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/google/common/collect/ImmutableSortedMap;->iO:Lcom/google/common/collect/ImmutableMap;

    check-cast v0, Lcom/google/common/collect/ImmutableSortedMap;

    return-object v0
.end method

.method private cX()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->eB()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;-><init>(Lcom/google/common/collect/ImmutableSortedMap;)V

    goto :goto_0
.end method

.method private cZ()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 4

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedSet;->b(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    .line 521
    :goto_0
    return-object v0

    .line 517
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    .line 518
    iget v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->fromIndex:I

    :goto_1
    iget v2, p0, Lcom/google/common/collect/ImmutableSortedMap;->toIndex:I

    if-ge v0, v2, :cond_1

    .line 519
    iget v2, p0, Lcom/google/common/collect/ImmutableSortedMap;->fromIndex:I

    sub-int v2, v0, v2

    iget-object v3, p0, Lcom/google/common/collect/ImmutableSortedMap;->gQ:[Ljava/util/Map$Entry;

    aget-object v3, v3, v0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 518
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 521
    :cond_1
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedSet;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method static synthetic d([Ljava/util/Map$Entry;Ljava/util/Comparator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->b([Ljava/util/Map$Entry;Ljava/util/Comparator;)V

    return-void
.end method

.method private f(II)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 661
    if-ge p1, p2, :cond_0

    .line 662
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap;->gQ:[Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/common/collect/ImmutableSortedMap;-><init>([Ljava/util/Map$Entry;Ljava/util/Comparator;II)V

    .line 665
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMap;->a(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    goto :goto_0
.end method

.method private x(Ljava/lang/Object;)I
    .locals 5
    .parameter

    .prologue
    .line 413
    iget v1, p0, Lcom/google/common/collect/ImmutableSortedMap;->fromIndex:I

    .line 414
    iget v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->toIndex:I

    add-int/lit8 v0, v0, -0x1

    .line 416
    :goto_0
    if-gt v1, v0, :cond_2

    .line 417
    sub-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    .line 418
    iget-object v3, p0, Lcom/google/common/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    iget-object v4, p0, Lcom/google/common/collect/ImmutableSortedMap;->gQ:[Ljava/util/Map$Entry;

    aget-object v4, v4, v2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, p1, v4}, Lcom/google/common/collect/ImmutableSortedSet;->a(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 420
    if-gez v3, :cond_0

    .line 421
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 422
    :cond_0
    if-lez v3, :cond_1

    .line 423
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 429
    :goto_1
    return v0

    :cond_2
    neg-int v0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public cY()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->iP:Lcom/google/common/collect/ImmutableSortedSet;

    .line 508
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMap;->cZ()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->iP:Lcom/google/common/collect/ImmutableSortedSet;

    :cond_0
    return-object v0
.end method

.method public ch()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->gT:Lcom/google/common/collect/ImmutableCollection;

    .line 532
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$Values;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedMap$Values;-><init>(Lcom/google/common/collect/ImmutableSortedMap;)V

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->gT:Lcom/google/common/collect/ImmutableCollection;

    :cond_0
    return-object v0
.end method

.method public co()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->cw:Lcom/google/common/collect/ImmutableSet;

    .line 452
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMap;->cX()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->cw:Lcom/google/common/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 433
    if-nez p1, :cond_0

    move v0, v1

    .line 441
    :goto_0
    return v0

    .line 436
    :cond_0
    iget v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->fromIndex:I

    :goto_1
    iget v2, p0, Lcom/google/common/collect/ImmutableSortedMap;->toIndex:I

    if-ge v0, v2, :cond_2

    .line 437
    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedMap;->gQ:[Ljava/util/Map$Entry;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 438
    const/4 v0, 0x1

    goto :goto_0

    .line 436
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 441
    goto :goto_0
.end method

.method public bridge synthetic cp()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->cY()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 631
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->d(Z)V

    .line 634
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->A(Ljava/lang/Object;)I

    move-result v0

    .line 635
    invoke-direct {p0, p2}, Lcom/google/common/collect/ImmutableSortedMap;->A(Ljava/lang/Object;)I

    move-result v1

    .line 636
    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ImmutableSortedMap;->f(II)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0

    .line 633
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->co()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->gQ:[Ljava/util/Map$Entry;

    iget v1, p0, Lcom/google/common/collect/ImmutableSortedMap;->fromIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 400
    if-nez p1, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-object v0

    .line 405
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->x(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 409
    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->gQ:[Ljava/util/Map$Entry;

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 406
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .parameter

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->y(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->cY()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->gQ:[Ljava/util/Map$Entry;

    iget v1, p0, Lcom/google/common/collect/ImmutableSortedMap;->toIndex:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 396
    iget v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->toIndex:I

    iget v1, p0, Lcom/google/common/collect/ImmutableSortedMap;->fromIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMap;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .parameter

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->z(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->ch()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 690
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$SerializedForm;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedMap$SerializedForm;-><init>(Lcom/google/common/collect/ImmutableSortedMap;)V

    return-object v0
.end method

.method public y(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 2
    .parameter

    .prologue
    .line 613
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableSortedMap;->A(Ljava/lang/Object;)I

    move-result v0

    .line 614
    iget v1, p0, Lcom/google/common/collect/ImmutableSortedMap;->fromIndex:I

    invoke-direct {p0, v1, v0}, Lcom/google/common/collect/ImmutableSortedMap;->f(II)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public z(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 2
    .parameter

    .prologue
    .line 650
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableSortedMap;->A(Ljava/lang/Object;)I

    move-result v0

    .line 651
    iget v1, p0, Lcom/google/common/collect/ImmutableSortedMap;->toIndex:I

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ImmutableSortedMap;->f(II)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method
