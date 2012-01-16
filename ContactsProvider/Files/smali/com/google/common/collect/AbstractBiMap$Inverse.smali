.class Lcom/google/common/collect/AbstractBiMap$Inverse;
.super Lcom/google/common/collect/AbstractBiMap;
.source "AbstractBiMap.java"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>(Ljava/util/Map;Lcom/google/common/collect/AbstractBiMap;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 359
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/AbstractBiMap;-><init>(Ljava/util/Map;Lcom/google/common/collect/AbstractBiMap;Lcom/google/common/collect/AbstractBiMap$1;)V

    .line 360
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lcom/google/common/collect/AbstractBiMap;Lcom/google/common/collect/AbstractBiMap$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 357
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/AbstractBiMap$Inverse;-><init>(Ljava/util/Map;Lcom/google/common/collect/AbstractBiMap;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 382
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 383
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/AbstractBiMap$Inverse;->a(Lcom/google/common/collect/AbstractBiMap;)V

    .line 384
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 375
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 376
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$Inverse;->r()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 377
    return-void
.end method


# virtual methods
.method protected bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 357
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->E()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$Inverse;->r()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->r()Lcom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 357
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->q()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
