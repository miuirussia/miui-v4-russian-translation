.class final Lcom/google/common/collect/SingletonImmutableMap;
.super Lcom/google/common/collect/ImmutableMap;
.source "SingletonImmutableMap.java"


# instance fields
.field private transient aZ:Ljava/util/Map$Entry;

.field private transient cw:Lcom/google/common/collect/ImmutableSet;

.field private transient gS:Lcom/google/common/collect/ImmutableSet;

.field private transient gT:Lcom/google/common/collect/ImmutableCollection;

.field final transient sS:Ljava/lang/Object;

.field final transient singleValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/util/Map$Entry;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    .line 47
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/common/collect/SingletonImmutableMap;->aZ:Ljava/util/Map$Entry;

    .line 48
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/SingletonImmutableMap;->sS:Ljava/lang/Object;

    .line 49
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    .line 50
    return-void
.end method

.method private fw()Ljava/util/Map$Entry;
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableMap;->aZ:Ljava/util/Map$Entry;

    .line 54
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableMap;->sS:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/SingletonImmutableMap;->aZ:Ljava/util/Map$Entry;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public ch()Lcom/google/common/collect/ImmutableCollection;
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableMap;->gT:Lcom/google/common/collect/ImmutableCollection;

    .line 96
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/SingletonImmutableMap$Values;

    iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/google/common/collect/SingletonImmutableMap$Values;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/common/collect/SingletonImmutableMap;->gT:Lcom/google/common/collect/ImmutableCollection;

    :cond_0
    return-object v0
.end method

.method public co()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableMap;->cw:Lcom/google/common/collect/ImmutableSet;

    .line 82
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/common/collect/SingletonImmutableMap;->fw()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->U(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/SingletonImmutableMap;->cw:Lcom/google/common/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableMap;->sS:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public cp()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableMap;->gS:Lcom/google/common/collect/ImmutableSet;

    .line 89
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableMap;->sS:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->U(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/SingletonImmutableMap;->gS:Lcom/google/common/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/common/collect/SingletonImmutableMap;->co()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 125
    if-ne p1, p0, :cond_1

    move v2, v1

    .line 137
    :cond_0
    :goto_0
    return v2

    .line 128
    :cond_1
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 129
    check-cast p1, Ljava/util/Map;

    .line 130
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 133
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 134
    iget-object v3, p0, Lcom/google/common/collect/SingletonImmutableMap;->sS:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/common/collect/SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableMap;->sS:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableMap;->sS:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/common/collect/SingletonImmutableMap;->cp()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableMap;->sS:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/common/collect/SingletonImmutableMap;->ch()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
