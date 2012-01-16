.class public final Lcom/google/common/collect/EnumBiMap;
.super Lcom/google/common/collect/AbstractBiMap;
.source "EnumBiMap.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient keyType:Ljava/lang/Class;

.field private transient valueType:Ljava/lang/Class;


# direct methods
.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .parameter

    .prologue
    .line 118
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 119
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/common/collect/EnumBiMap;->keyType:Ljava/lang/Class;

    .line 120
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/common/collect/EnumBiMap;->valueType:Ljava/lang/Class;

    .line 121
    new-instance v0, Ljava/util/EnumMap;

    iget-object v1, p0, Lcom/google/common/collect/EnumBiMap;->keyType:Ljava/lang/Class;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    new-instance v1, Ljava/util/EnumMap;

    iget-object v2, p0, Lcom/google/common/collect/EnumBiMap;->valueType:Ljava/lang/Class;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/EnumBiMap;->a(Ljava/util/Map;Ljava/util/Map;)V

    .line 122
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->a(Ljava/util/Map;Ljava/io/ObjectInputStream;)V

    .line 123
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 109
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 110
    iget-object v0, p0, Lcom/google/common/collect/EnumBiMap;->keyType:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/google/common/collect/EnumBiMap;->valueType:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 112
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->a(Ljava/util/Map;Ljava/io/ObjectOutputStream;)V

    .line 113
    return-void
.end method


# virtual methods
.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->clear()V

    return-void
.end method

.method public bridge synthetic containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putAll(Ljava/util/Map;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic q()Ljava/util/Set;
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->q()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic r()Lcom/google/common/collect/BiMap;
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->r()Lcom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method
