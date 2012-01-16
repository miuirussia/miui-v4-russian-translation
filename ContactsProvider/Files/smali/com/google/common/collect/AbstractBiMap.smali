.class abstract Lcom/google/common/collect/AbstractBiMap;
.super Lcom/google/common/collect/ForwardingMap;
.source "AbstractBiMap.java"

# interfaces
.implements Lcom/google/common/collect/BiMap;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient ba:Ljava/util/Map;

.field private transient entrySet:Ljava/util/Set;

.field private transient keySet:Ljava/util/Set;

.field private transient oV:Ljava/util/Set;

.field private transient wL:Lcom/google/common/collect/AbstractBiMap;


# direct methods
.method private constructor <init>(Ljava/util/Map;Lcom/google/common/collect/AbstractBiMap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMap;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/common/collect/AbstractBiMap;->ba:Ljava/util/Map;

    .line 60
    iput-object p2, p0, Lcom/google/common/collect/AbstractBiMap;->wL:Lcom/google/common/collect/AbstractBiMap;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lcom/google/common/collect/AbstractBiMap;Lcom/google/common/collect/AbstractBiMap$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/AbstractBiMap;-><init>(Ljava/util/Map;Lcom/google/common/collect/AbstractBiMap;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMap;-><init>()V

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/AbstractBiMap;->a(Ljava/util/Map;Ljava/util/Map;)V

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/AbstractBiMap;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->ac(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 102
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    .line 103
    if-eqz v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    :goto_0
    return-object p2

    .line 106
    :cond_0
    if-eqz p3, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap;->r()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/common/collect/BiMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :goto_1
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->ba:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 112
    invoke-direct {p0, p1, v3, v0, p2}, Lcom/google/common/collect/AbstractBiMap;->a(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V

    move-object p2, v0

    .line 113
    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {p0, p2}, Lcom/google/common/collect/AbstractBiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    const-string v4, "value already present: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v0, v4, v1}, Lcom/google/common/base/Preconditions;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2
.end method

.method static synthetic a(Lcom/google/common/collect/AbstractBiMap;Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/AbstractBiMap;->a(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    if-eqz p2, :cond_0

    .line 119
    invoke-direct {p0, p3}, Lcom/google/common/collect/AbstractBiMap;->ad(Ljava/lang/Object;)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->wL:Lcom/google/common/collect/AbstractBiMap;

    iget-object v0, v0, Lcom/google/common/collect/AbstractBiMap;->ba:Ljava/util/Map;

    invoke-interface {v0, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-void
.end method

.method private ac(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->ba:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 130
    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractBiMap;->ad(Ljava/lang/Object;)V

    .line 131
    return-object v0
.end method

.method private ad(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->wL:Lcom/google/common/collect/AbstractBiMap;

    iget-object v0, v0, Lcom/google/common/collect/AbstractBiMap;->ba:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-void
.end method

.method static synthetic b(Lcom/google/common/collect/AbstractBiMap;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->ba:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/google/common/collect/AbstractBiMap;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->ad(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lcom/google/common/collect/AbstractBiMap;)Lcom/google/common/collect/AbstractBiMap;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->wL:Lcom/google/common/collect/AbstractBiMap;

    return-object v0
.end method


# virtual methods
.method protected E()Ljava/util/Map;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->ba:Ljava/util/Map;

    return-object v0
.end method

.method a(Lcom/google/common/collect/AbstractBiMap;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/common/collect/AbstractBiMap;->wL:Lcom/google/common/collect/AbstractBiMap;

    .line 83
    return-void
.end method

.method a(Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->ba:Ljava/util/Map;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 73
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->wL:Lcom/google/common/collect/AbstractBiMap;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 74
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->d(Z)V

    .line 75
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->d(Z)V

    .line 76
    if-eq p1, p2, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->d(Z)V

    .line 77
    iput-object p1, p0, Lcom/google/common/collect/AbstractBiMap;->ba:Ljava/util/Map;

    .line 78
    new-instance v0, Lcom/google/common/collect/AbstractBiMap$Inverse;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, v1}, Lcom/google/common/collect/AbstractBiMap$Inverse;-><init>(Ljava/util/Map;Lcom/google/common/collect/AbstractBiMap;Lcom/google/common/collect/AbstractBiMap$1;)V

    iput-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->wL:Lcom/google/common/collect/AbstractBiMap;

    .line 79
    return-void

    :cond_0
    move v0, v2

    .line 72
    goto :goto_0

    :cond_1
    move v0, v2

    .line 73
    goto :goto_1

    :cond_2
    move v1, v2

    .line 76
    goto :goto_2
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->ba:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 148
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->wL:Lcom/google/common/collect/AbstractBiMap;

    iget-object v0, v0, Lcom/google/common/collect/AbstractBiMap;->ba:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 149
    return-void
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->wL:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/AbstractBiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap;->E()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->entrySet:Ljava/util/Set;

    .line 266
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/AbstractBiMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractBiMap$EntrySet;-><init>(Lcom/google/common/collect/AbstractBiMap;Lcom/google/common/collect/AbstractBiMap$1;)V

    iput-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->entrySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->keySet:Ljava/util/Set;

    .line 161
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/AbstractBiMap$KeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractBiMap$KeySet;-><init>(Lcom/google/common/collect/AbstractBiMap;Lcom/google/common/collect/AbstractBiMap$1;)V

    iput-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->keySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/AbstractBiMap;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .parameter

    .prologue
    .line 141
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 142
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/common/collect/AbstractBiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 144
    :cond_0
    return-void
.end method

.method public q()Ljava/util/Set;
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->oV:Ljava/util/Set;

    .line 219
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/AbstractBiMap$ValueSet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractBiMap$ValueSet;-><init>(Lcom/google/common/collect/AbstractBiMap;Lcom/google/common/collect/AbstractBiMap$1;)V

    iput-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->oV:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public r()Lcom/google/common/collect/BiMap;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->wL:Lcom/google/common/collect/AbstractBiMap;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->ac(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap;->q()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
