.class public final Lcom/google/common/collect/HashMultimap;
.super Lcom/google/common/collect/AbstractSetMultimap;
.source "HashMultimap.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient expectedValuesPerKey:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractSetMultimap;-><init>(Ljava/util/Map;)V

    .line 52
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/common/collect/HashMultimap;->expectedValuesPerKey:I

    .line 91
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 129
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 130
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/HashMultimap;->expectedValuesPerKey:I

    .line 131
    invoke-static {p1}, Lcom/google/common/collect/Serialization;->a(Ljava/io/ObjectInputStream;)I

    move-result v0

    .line 132
    invoke-static {v0}, Lcom/google/common/collect/Maps;->d(I)Ljava/util/HashMap;

    move-result-object v1

    .line 133
    invoke-virtual {p0, v1}, Lcom/google/common/collect/HashMultimap;->b(Ljava/util/Map;)V

    .line 134
    invoke-static {p0, p1, v0}, Lcom/google/common/collect/Serialization;->a(Lcom/google/common/collect/Multimap;Ljava/io/ObjectInputStream;I)V

    .line 135
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 122
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 123
    iget v0, p0, Lcom/google/common/collect/HashMultimap;->expectedValuesPerKey:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 124
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->a(Lcom/google/common/collect/Multimap;Ljava/io/ObjectOutputStream;)V

    .line 125
    return-void
.end method


# virtual methods
.method bridge synthetic J()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/common/collect/HashMultimap;->cb()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic bB()Ljava/util/Map;
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->bB()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->c(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSetMultimap;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method cb()Ljava/util/Set;
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/google/common/collect/HashMultimap;->expectedValuesPerKey:I

    invoke-static {v0}, Lcom/google/common/collect/Sets;->b(I)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->clear()V

    return-void
.end method

.method public bridge synthetic containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSetMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic size()I
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic w()Ljava/util/Set;
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->w()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
