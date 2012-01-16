.class public Lcom/google/common/collect/TreeMultimap;
.super Lcom/google/common/collect/AbstractSortedSetMultimap;
.source "TreeMultimap.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient fL:Ljava/util/Comparator;

.field private transient fM:Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, v0, v0}, Lcom/google/common/collect/TreeMultimap;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    .line 117
    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 124
    if-nez p1, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractSortedSetMultimap;-><init>(Ljava/util/Map;)V

    .line 127
    iput-object p1, p0, Lcom/google/common/collect/TreeMultimap;->fL:Ljava/util/Comparator;

    .line 128
    iput-object p2, p0, Lcom/google/common/collect/TreeMultimap;->fM:Ljava/util/Comparator;

    .line 129
    return-void

    .line 124
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 199
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 200
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/TreeMultimap;->fL:Ljava/util/Comparator;

    .line 201
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/TreeMultimap;->fM:Ljava/util/Comparator;

    .line 202
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultimap;->fL:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeMultimap;->b(Ljava/util/Map;)V

    .line 203
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->a(Lcom/google/common/collect/Multimap;Ljava/io/ObjectInputStream;)V

    .line 204
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 190
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 191
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->bY()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 192
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->bZ()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 193
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->a(Lcom/google/common/collect/Multimap;Ljava/io/ObjectOutputStream;)V

    .line 194
    return-void
.end method


# virtual methods
.method bridge synthetic J()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->bX()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic bB()Ljava/util/Map;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->ca()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bC()Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 170
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method bX()Ljava/util/SortedSet;
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/common/collect/TreeMultimap;->fM:Ljava/util/Comparator;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultimap;->fM:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public bY()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/common/collect/TreeMultimap;->fL:Ljava/util/Comparator;

    return-object v0
.end method

.method public bZ()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/common/collect/TreeMultimap;->fM:Ljava/util/Comparator;

    return-object v0
.end method

.method public bridge synthetic c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSortedSetMultimap;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public ca()Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 181
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->bB()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method bridge synthetic cb()Ljava/util/Set;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->bX()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->clear()V

    return-void
.end method

.method public bridge synthetic containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedSetMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedSetMultimap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->bC()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedSetMultimap;->m(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSortedSetMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic size()I
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic w()Ljava/util/Set;
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->w()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
