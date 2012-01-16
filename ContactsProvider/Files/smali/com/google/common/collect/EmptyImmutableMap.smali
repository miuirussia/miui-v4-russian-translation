.class final Lcom/google/common/collect/EmptyImmutableMap;
.super Lcom/google/common/collect/ImmutableMap;
.source "EmptyImmutableMap.java"


# static fields
.field static final hd:Lcom/google/common/collect/EmptyImmutableMap;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/google/common/collect/EmptyImmutableMap;

    invoke-direct {v0}, Lcom/google/common/collect/EmptyImmutableMap;-><init>()V

    sput-object v0, Lcom/google/common/collect/EmptyImmutableMap;->hd:Lcom/google/common/collect/EmptyImmutableMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    return-void
.end method


# virtual methods
.method public ch()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/google/common/collect/ImmutableCollection;->im:Lcom/google/common/collect/ImmutableCollection;

    return-object v0
.end method

.method public co()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->eB()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public cp()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->eB()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableMap;->co()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 70
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 71
    check-cast p1, Ljava/util/Map;

    .line 72
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    .line 74
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableMap;->cp()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/google/common/collect/EmptyImmutableMap;->hd:Lcom/google/common/collect/EmptyImmutableMap;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "{}"

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableMap;->ch()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
