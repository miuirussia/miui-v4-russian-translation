.class public final Lcom/google/common/collect/LinkedHashMultimap;
.super Lcom/google/common/collect/AbstractSetMultimap;
.source "LinkedHashMultimap.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient expectedValuesPerKey:I

.field transient me:Ljava/util/Collection;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractSetMultimap;-><init>(Ljava/util/Map;)V

    .line 73
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->expectedValuesPerKey:I

    .line 121
    invoke-static {}, Lcom/google/common/collect/Sets;->p()Ljava/util/LinkedHashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->me:Ljava/util/Collection;

    .line 122
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .parameter

    .prologue
    .line 364
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 365
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->expectedValuesPerKey:I

    .line 366
    invoke-static {p1}, Lcom/google/common/collect/Serialization;->a(Ljava/io/ObjectInputStream;)I

    move-result v0

    .line 367
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lcom/google/common/collect/Maps;->e(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/google/common/collect/LinkedHashMultimap;->b(Ljava/util/Map;)V

    .line 368
    new-instance v1, Ljava/util/LinkedHashSet;

    iget v2, p0, Lcom/google/common/collect/LinkedHashMultimap;->expectedValuesPerKey:I

    mul-int/2addr v2, v0

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap;->me:Ljava/util/Collection;

    .line 370
    invoke-static {p0, p1, v0}, Lcom/google/common/collect/Serialization;->a(Lcom/google/common/collect/Multimap;Ljava/io/ObjectInputStream;I)V

    .line 371
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->me:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 372
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 374
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 376
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 377
    iget-object v3, p0, Lcom/google/common/collect/LinkedHashMultimap;->me:Ljava/util/Collection;

    invoke-static {v1, v2}, Lcom/google/common/collect/Maps;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 372
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .parameter

    .prologue
    .line 353
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 354
    iget v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->expectedValuesPerKey:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 355
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->a(Lcom/google/common/collect/Multimap;Ljava/io/ObjectOutputStream;)V

    .line 356
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->me:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 357
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 358
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 360
    :cond_0
    return-void
.end method


# virtual methods
.method bridge synthetic J()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->cb()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method O(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .parameter

    .prologue
    .line 164
    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->cb()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;-><init>(Lcom/google/common/collect/LinkedHashMultimap;Ljava/lang/Object;Ljava/util/Set;)V

    return-object v0
.end method

.method public bridge synthetic bB()Ljava/util/Map;
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->bB()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->c(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSetMultimap;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method cb()Ljava/util/Set;
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/util/LinkedHashSet;

    iget v1, p0, Lcom/google/common/collect/LinkedHashMultimap;->expectedValuesPerKey:I

    invoke-static {v1}, Lcom/google/common/collect/Maps;->e(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->clear()V

    return-void
.end method

.method public bridge synthetic containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method ec()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->me:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 284
    new-instance v1, Lcom/google/common/collect/LinkedHashMultimap$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/LinkedHashMultimap$1;-><init>(Lcom/google/common/collect/LinkedHashMultimap;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSetMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic size()I
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Ljava/util/Set;
    .locals 1

    .prologue
    .line 330
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->w()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic x()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->w()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
