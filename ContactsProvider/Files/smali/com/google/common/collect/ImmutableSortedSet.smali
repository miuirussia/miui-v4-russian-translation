.class public abstract Lcom/google/common/collect/ImmutableSortedSet;
.super Lcom/google/common/collect/ImmutableSortedSetFauxverideShim;
.source "ImmutableSortedSet.java"

# interfaces
.implements Ljava/util/SortedSet;


# static fields
.field private static final iM:Ljava/util/Comparator;

.field private static final pf:Lcom/google/common/collect/ImmutableSortedSet;


# instance fields
.field final transient comparator:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Lcom/google/common/collect/Ordering;->eb()Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ImmutableSortedSet;->iM:Ljava/util/Comparator;

    .line 92
    new-instance v0, Lcom/google/common/collect/EmptyImmutableSortedSet;

    sget-object v1, Lcom/google/common/collect/ImmutableSortedSet;->iM:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lcom/google/common/collect/EmptyImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/common/collect/ImmutableSortedSet;->pf:Lcom/google/common/collect/ImmutableSortedSet;

    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .parameter

    .prologue
    .line 572
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedSetFauxverideShim;-><init>()V

    .line 573
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    .line 574
    return-void
.end method

.method static a(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 566
    .line 567
    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static a(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 392
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSortedSet;->b(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    .line 402
    :goto_0
    return-object v0

    .line 395
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 396
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 397
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 399
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 400
    invoke-static {v0, p0}, Lcom/google/common/collect/ImmutableSortedSet;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 401
    invoke-static {v0, p0}, Lcom/google/common/collect/ImmutableSortedSet;->a([Ljava/lang/Object;Ljava/util/Comparator;)[Ljava/lang/Object;

    move-result-object v1

    .line 402
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method static a(Ljava/lang/Iterable;Ljava/util/Comparator;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 414
    instance-of v1, p0, Ljava/util/SortedSet;

    if-eqz v1, :cond_0

    .line 415
    check-cast p0, Ljava/util/SortedSet;

    .line 416
    invoke-interface {p0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v1

    .line 417
    if-nez v1, :cond_1

    invoke-static {}, Lcom/google/common/collect/Ordering;->eb()Lcom/google/common/collect/Ordering;

    move-result-object v1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    .line 421
    :cond_0
    :goto_0
    return v0

    .line 417
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static a([Ljava/lang/Object;Ljava/util/Comparator;)[Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 228
    move v1, v0

    .line 229
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 230
    aget-object v2, p0, v0

    .line 231
    add-int/lit8 v3, v1, -0x1

    aget-object v3, p0, v3

    invoke-static {p1, v3, v2}, Lcom/google/common/collect/ImmutableSortedSet;->a(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 232
    aput-object v2, p0, v1

    .line 233
    add-int/lit8 v1, v1, 0x1

    .line 229
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_1
    array-length v0, p0

    if-ne v1, v0, :cond_2

    .line 243
    :goto_1
    return-object p0

    .line 241
    :cond_2
    new-array v0, v1, [Ljava/lang/Object;

    .line 242
    invoke-static {p0, v4, v0, v4, v1}, Lcom/google/common/collect/Platform;->a([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    move-object p0, v0

    .line 243
    goto :goto_1
.end method

.method static b(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .parameter

    .prologue
    .line 102
    sget-object v0, Lcom/google/common/collect/ImmutableSortedSet;->iM:Ljava/util/Comparator;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Lcom/google/common/collect/ImmutableSortedSet;->eS()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/EmptyImmutableSortedSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/EmptyImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method static synthetic b(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet;->a(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method private static eS()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/google/common/collect/ImmutableSortedSet;->pf:Lcom/google/common/collect/ImmutableSortedSet;

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 678
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Use SerializedForm"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 218
    invoke-static {p0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 219
    return-void
.end method


# virtual methods
.method abstract J(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
.end method

.method abstract K(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
.end method

.method public V(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .parameter

    .prologue
    .line 599
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableSortedSet;->J(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public W(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .parameter

    .prologue
    .line 634
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableSortedSet;->K(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method abstract h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .parameter

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet;->V(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method abstract indexOf(Ljava/lang/Object;)I
.end method

.method n(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 557
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-static {v0, p1, p2}, Lcom/google/common/collect/ImmutableSortedSet;->a(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public o(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 616
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->d(Z)V

    .line 619
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedSet;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0

    .line 618
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedSet;->o(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .parameter

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet;->W(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 682
    new-instance v0, Lcom/google/common/collect/ImmutableSortedSet$SerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedSet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ImmutableSortedSet$SerializedForm;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;)V

    return-object v0
.end method
