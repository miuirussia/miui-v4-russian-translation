.class public final Lcom/google/common/collect/HashBiMap;
.super Lcom/google/common/collect/AbstractBiMap;
.source "HashBiMap.java"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/AbstractBiMap;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 73
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .parameter

    .prologue
    .line 101
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 102
    invoke-static {p1}, Lcom/google/common/collect/Serialization;->a(Ljava/io/ObjectInputStream;)I

    move-result v0

    .line 103
    invoke-static {v0}, Lcom/google/common/collect/Maps;->d(I)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0}, Lcom/google/common/collect/Maps;->d(I)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/common/collect/HashBiMap;->a(Ljava/util/Map;Ljava/util/Map;)V

    .line 105
    invoke-static {p0, p1, v0}, Lcom/google/common/collect/Serialization;->a(Ljava/util/Map;Ljava/io/ObjectInputStream;I)V

    .line 106
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 96
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->a(Ljava/util/Map;Ljava/io/ObjectOutputStream;)V

    .line 97
    return-void
.end method


# virtual methods
.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->clear()V

    return-void
.end method

.method public bridge synthetic containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractBiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putAll(Ljava/util/Map;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic q()Ljava/util/Set;
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->q()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic r()Lcom/google/common/collect/BiMap;
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->r()Lcom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
