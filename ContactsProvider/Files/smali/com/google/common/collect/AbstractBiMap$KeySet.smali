.class Lcom/google/common/collect/AbstractBiMap$KeySet;
.super Lcom/google/common/collect/ForwardingSet;
.source "AbstractBiMap.java"


# instance fields
.field final synthetic bW:Lcom/google/common/collect/AbstractBiMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/AbstractBiMap;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/common/collect/AbstractBiMap$KeySet;->bW:Lcom/google/common/collect/AbstractBiMap;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/AbstractBiMap;Lcom/google/common/collect/AbstractBiMap$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractBiMap$KeySet;-><init>(Lcom/google/common/collect/AbstractBiMap;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Set;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$KeySet;->bW:Lcom/google/common/collect/AbstractBiMap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractBiMap;->b(Lcom/google/common/collect/AbstractBiMap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic c()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$KeySet;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$KeySet;->bW:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractBiMap;->clear()V

    .line 171
    return-void
.end method

.method protected bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$KeySet;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$KeySet;->bW:Lcom/google/common/collect/AbstractBiMap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractBiMap;->b(Lcom/google/common/collect/AbstractBiMap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 191
    new-instance v1, Lcom/google/common/collect/AbstractBiMap$KeySet$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractBiMap$KeySet$1;-><init>(Lcom/google/common/collect/AbstractBiMap$KeySet;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractBiMap$KeySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    const/4 v0, 0x0

    .line 178
    :goto_0
    return v0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$KeySet;->bW:Lcom/google/common/collect/AbstractBiMap;

    invoke-static {v0, p1}, Lcom/google/common/collect/AbstractBiMap;->a(Lcom/google/common/collect/AbstractBiMap;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$KeySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->a(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$KeySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->b(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
