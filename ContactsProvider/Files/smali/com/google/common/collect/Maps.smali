.class public final Lcom/google/common/collect/Maps;
.super Ljava/lang/Object;
.source "Maps.java"


# static fields
.field static final ad:Lcom/google/common/base/Joiner$MapJoiner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1334
    sget-object v0, Lcom/google/common/collect/Collections2;->aM:Lcom/google/common/base/Joiner;

    const-string v1, "="

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->F(Ljava/lang/String;)Lcom/google/common/base/Joiner$MapJoiner;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/Maps;->ad:Lcom/google/common/base/Joiner$MapJoiner;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1343
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1345
    :goto_0
    return-object v0

    .line 1344
    :catch_0
    move-exception v0

    .line 1345
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 498
    new-instance v0, Lcom/google/common/collect/ImmutableEntry;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .parameter

    .prologue
    .line 526
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    new-instance v0, Lcom/google/common/collect/Maps$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$1;-><init>(Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method static a(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 673
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 674
    const/4 v0, 0x0

    .line 676
    :goto_0
    return v0

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .parameter

    .prologue
    .line 61
    invoke-static {p0}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method static b(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .parameter

    .prologue
    .line 511
    new-instance v0, Lcom/google/common/collect/Maps$UnmodifiableEntrySet;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/Maps$UnmodifiableEntrySet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method static b(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 693
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 694
    const/4 v0, 0x0

    .line 696
    :goto_0
    return v0

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static b(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1355
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1357
    :goto_0
    return v0

    .line 1356
    :catch_0
    move-exception v0

    .line 1357
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(I)Ljava/util/HashMap;
    .locals 2
    .parameter

    .prologue
    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p0}, Lcom/google/common/collect/Maps;->e(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object v0
.end method

.method static e(I)I
    .locals 2
    .parameter

    .prologue
    .line 107
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->d(Z)V

    .line 108
    mul-int/lit8 v0, p0, 0x2

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newHashMap()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method
