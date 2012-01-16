.class public final Lcom/google/common/collect/Multimaps;
.super Ljava/lang/Object;
.source "Multimaps.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static c(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .parameter

    .prologue
    .line 878
    new-instance v0, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method static synthetic d(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-static {p0}, Lcom/google/common/collect/Multimaps;->c(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static e(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .parameter

    .prologue
    .line 836
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    new-instance v0, Lcom/google/common/collect/Multimaps$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$1;-><init>(Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method private static f(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .parameter

    .prologue
    .line 813
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 814
    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    .line 820
    :goto_0
    return-object v0

    .line 815
    :cond_0
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 816
    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 817
    :cond_1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 818
    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 820
    :cond_2
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic f(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-static {p0}, Lcom/google/common/collect/Multimaps;->e(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method private static g(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .parameter

    .prologue
    .line 859
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 860
    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Lcom/google/common/collect/Maps;->b(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 862
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/Maps$UnmodifiableEntries;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/Maps$UnmodifiableEntries;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method static synthetic h(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-static {p0}, Lcom/google/common/collect/Multimaps;->f(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-static {p0}, Lcom/google/common/collect/Multimaps;->g(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
