.class Lcom/google/common/collect/CustomConcurrentHashMap$Impl;
.super Ljava/util/AbstractMap;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/ConcurrentMap;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field entrySet:Ljava/util/Set;

.field keySet:Ljava/util/Set;

.field final segmentMask:I

.field final segmentShift:I

.field final segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

.field final strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

.field values:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;Lcom/google/common/collect/CustomConcurrentHashMap$Builder;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4000

    const/high16 v0, 0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 595
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 596
    invoke-virtual {p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Builder;->aS()I

    move-result v1

    .line 597
    invoke-virtual {p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Builder;->aR()I

    move-result v3

    .line 599
    if-le v1, v0, :cond_5

    :goto_0
    move v6, v5

    move v1, v4

    .line 606
    :goto_1
    if-ge v6, v0, :cond_0

    .line 607
    add-int/lit8 v7, v1, 0x1

    .line 608
    shl-int/lit8 v1, v6, 0x1

    move v6, v1

    move v1, v7

    goto :goto_1

    .line 610
    :cond_0
    rsub-int/lit8 v0, v1, 0x20

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentShift:I

    .line 611
    add-int/lit8 v0, v6, -0x1

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentMask:I

    .line 612
    invoke-virtual {p0, v6}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->W(I)[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    .line 614
    if-le v3, v2, :cond_4

    move v0, v2

    .line 618
    :goto_2
    div-int v1, v0, v6

    .line 619
    mul-int v2, v1, v6

    if-ge v2, v0, :cond_3

    .line 620
    add-int/lit8 v0, v1, 0x1

    :goto_3
    move v1, v5

    .line 624
    :goto_4
    if-ge v1, v0, :cond_1

    .line 625
    shl-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_1
    move v0, v4

    .line 627
    :goto_5
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 628
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    new-instance v3, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    invoke-direct {v3, p0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;I)V

    aput-object v3, v2, v0

    .line 627
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 631
    :cond_2
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    .line 633
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$InternalsImpl;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$InternalsImpl;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;)V

    invoke-interface {p1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->a(Lcom/google/common/collect/CustomConcurrentHashMap$Internals;)V

    .line 634
    return-void

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v3

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 9
    .parameter

    .prologue
    const/high16 v5, 0x4000

    const/high16 v1, 0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1925
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v6

    .line 1926
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 1927
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    .line 1929
    if-le v2, v1, :cond_6

    :goto_0
    move v7, v4

    move v2, v3

    .line 1936
    :goto_1
    if-ge v7, v1, :cond_0

    .line 1937
    add-int/lit8 v8, v2, 0x1

    .line 1938
    shl-int/lit8 v2, v7, 0x1

    move v7, v2

    move v2, v8

    goto :goto_1

    .line 1940
    :cond_0
    sget-object v1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Fields;->ai:Ljava/lang/reflect/Field;

    rsub-int/lit8 v2, v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1941
    sget-object v1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Fields;->aj:Ljava/lang/reflect/Field;

    add-int/lit8 v2, v7, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1942
    sget-object v1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Fields;->ak:Ljava/lang/reflect/Field;

    invoke-virtual {p0, v7}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->W(I)[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1944
    if-le v6, v5, :cond_5

    move v2, v5

    .line 1948
    :goto_2
    div-int v1, v2, v7

    .line 1949
    mul-int v5, v1, v7

    if-ge v5, v2, :cond_1

    .line 1950
    add-int/lit8 v1, v1, 0x1

    :cond_1
    move v2, v4

    .line 1954
    :goto_3
    if-ge v2, v1, :cond_2

    .line 1955
    shl-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    move v1, v3

    .line 1957
    :goto_4
    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 1958
    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    new-instance v4, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    invoke-direct {v4, p0, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;I)V

    aput-object v4, v3, v1

    .line 1957
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1961
    :cond_3
    sget-object v1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Fields;->al:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1964
    :goto_5
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 1965
    if-nez v0, :cond_4

    .line 1974
    return-void

    .line 1968
    :cond_4
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 1969
    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 1971
    :catch_0
    move-exception v0

    .line 1972
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_5
    move v2, v6

    goto :goto_2

    :cond_6
    move v1, v2

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .parameter

    .prologue
    .line 1888
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1889
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1890
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1891
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->entrySet()Ljava/util/Set;

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

    .line 1892
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1893
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 1895
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1896
    return-void
.end method


# virtual methods
.method W(I)[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;
    .locals 1
    .parameter

    .prologue
    .line 677
    const-class v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    check-cast v0, [Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    return-object v0
.end method

.method X(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;
    .locals 3
    .parameter

    .prologue
    .line 689
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentShift:I

    ushr-int v1, p1, v1

    iget v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentMask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 1543
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 1544
    invoke-virtual {v3}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->clear()V

    .line 1543
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1546
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 1344
    if-nez p1, :cond_0

    .line 1345
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1347
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->u(Ljava/lang/Object;)I

    move-result v0

    .line 1348
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->X(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->containsKey(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1362
    if-nez p1, :cond_0

    .line 1363
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1368
    :cond_0
    iget-object v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    .line 1369
    array-length v0, v5

    new-array v6, v0, [I

    move v4, v1

    .line 1372
    :goto_0
    const/4 v0, 0x2

    if-ge v4, v0, :cond_5

    move v0, v1

    move v2, v1

    .line 1374
    :goto_1
    array-length v7, v5

    if-ge v0, v7, :cond_2

    .line 1376
    aget-object v7, v5, v0

    iget v7, v7, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    .line 1377
    aget-object v7, v5, v0

    iget v7, v7, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    aput v7, v6, v0

    add-int/2addr v2, v7

    .line 1378
    aget-object v7, v5, v0

    invoke-virtual {v7, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->containsValue(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1414
    :goto_2
    return v3

    .line 1374
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1383
    :cond_2
    if-eqz v2, :cond_b

    move v0, v1

    .line 1384
    :goto_3
    array-length v2, v5

    if-ge v0, v2, :cond_b

    .line 1386
    aget-object v2, v5, v0

    iget v2, v2, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    .line 1387
    aget v2, v6, v0

    aget-object v7, v5, v0

    iget v7, v7, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    if-eq v2, v7, :cond_3

    move v0, v1

    .line 1393
    :goto_4
    if-eqz v0, :cond_4

    move v3, v1

    .line 1394
    goto :goto_2

    .line 1384
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1372
    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 1398
    :cond_5
    array-length v2, v5

    move v0, v1

    :goto_5
    if-ge v0, v2, :cond_6

    aget-object v4, v5, v0

    .line 1399
    invoke-virtual {v4}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 1398
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1403
    :cond_6
    :try_start_0
    array-length v2, v5

    move v0, v1

    :goto_6
    if-ge v0, v2, :cond_a

    aget-object v4, v5, v0

    .line 1404
    invoke-virtual {v4, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->containsValue(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_7

    move v0, v3

    .line 1410
    :goto_7
    array-length v2, v5

    :goto_8
    if-ge v1, v2, :cond_9

    aget-object v3, v5, v1

    .line 1411
    invoke-virtual {v3}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .line 1410
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1403
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1410
    :catchall_0
    move-exception v0

    array-length v2, v5

    :goto_9
    if-ge v1, v2, :cond_8

    aget-object v3, v5, v1

    .line 1411
    invoke-virtual {v3}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .line 1410
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_8
    throw v0

    :cond_9
    move v3, v0

    .line 1414
    goto :goto_2

    :cond_a
    move v0, v1

    goto :goto_7

    :cond_b
    move v0, v3

    goto :goto_4
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1610
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->entrySet:Ljava/util/Set;

    .line 1611
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$EntrySet;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;)V

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->entrySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 1327
    if-nez p1, :cond_0

    .line 1328
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1330
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->u(Ljava/lang/Object;)I

    move-result v0

    .line 1331
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->X(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1228
    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    .line 1238
    array-length v0, v3

    new-array v4, v0, [I

    move v0, v1

    move v2, v1

    .line 1240
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_2

    .line 1241
    aget-object v5, v3, v0

    iget v5, v5, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v5, :cond_1

    .line 1258
    :cond_0
    :goto_1
    return v1

    .line 1244
    :cond_1
    aget-object v5, v3, v0

    iget v5, v5, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    aput v5, v4, v0

    add-int/2addr v2, v5

    .line 1240
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1250
    :cond_2
    if-eqz v2, :cond_3

    move v0, v1

    .line 1251
    :goto_2
    array-length v2, v3

    if-ge v0, v2, :cond_3

    .line 1252
    aget-object v2, v3, v0

    iget v2, v2, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-nez v2, :cond_0

    aget v2, v4, v0

    aget-object v5, v3, v0

    iget v5, v5, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    if-ne v2, v5, :cond_0

    .line 1251
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1258
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->keySet:Ljava/util/Set;

    .line 1567
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$KeySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$KeySet;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;)V

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->keySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1431
    if-nez p1, :cond_0

    .line 1432
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1434
    :cond_0
    if-nez p2, :cond_1

    .line 1435
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1437
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->u(Ljava/lang/Object;)I

    move-result v0

    .line 1438
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->X(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .parameter

    .prologue
    .line 1467
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

    .line 1468
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1470
    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1449
    if-nez p1, :cond_0

    .line 1450
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1452
    :cond_0
    if-nez p2, :cond_1

    .line 1453
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1455
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->u(Ljava/lang/Object;)I

    move-result v0

    .line 1456
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->X(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 1482
    if-nez p1, :cond_0

    .line 1483
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1485
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->u(Ljava/lang/Object;)I

    move-result v0

    .line 1486
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->X(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->e(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1495
    if-nez p1, :cond_0

    .line 1496
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1498
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->u(Ljava/lang/Object;)I

    move-result v0

    .line 1499
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->X(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->b(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1529
    if-nez p1, :cond_0

    .line 1530
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1532
    :cond_0
    if-nez p2, :cond_1

    .line 1533
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1535
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->u(Ljava/lang/Object;)I

    move-result v0

    .line 1536
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->X(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1508
    if-nez p1, :cond_0

    .line 1509
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1511
    :cond_0
    if-nez p2, :cond_1

    .line 1512
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "oldValue"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1514
    :cond_1
    if-nez p3, :cond_2

    .line 1515
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "newValue"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1517
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->u(Ljava/lang/Object;)I

    move-result v0

    .line 1518
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->X(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 15

    .prologue
    .line 1269
    iget-object v7, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    .line 1270
    const-wide/16 v3, 0x0

    .line 1271
    const-wide/16 v1, 0x0

    .line 1272
    array-length v0, v7

    new-array v8, v0, [I

    .line 1275
    const/4 v0, 0x0

    move v6, v0

    move-wide v11, v1

    move-wide v0, v11

    move-wide v13, v3

    move-wide v2, v13

    :goto_0
    const/4 v4, 0x2

    if-ge v6, v4, :cond_8

    .line 1276
    const-wide/16 v4, 0x0

    .line 1277
    const-wide/16 v2, 0x0

    .line 1278
    const/4 v1, 0x0

    .line 1279
    const/4 v0, 0x0

    :goto_1
    array-length v9, v7

    if-ge v0, v9, :cond_0

    .line 1280
    aget-object v9, v7, v0

    iget v9, v9, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    int-to-long v9, v9

    add-long/2addr v2, v9

    .line 1281
    aget-object v9, v7, v0

    iget v9, v9, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    aput v9, v8, v0

    add-int/2addr v1, v9

    .line 1279
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1283
    :cond_0
    if-eqz v1, :cond_7

    .line 1284
    const/4 v0, 0x0

    :goto_2
    array-length v1, v7

    if-ge v0, v1, :cond_7

    .line 1285
    aget-object v1, v7, v0

    iget v1, v1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    int-to-long v9, v1

    add-long/2addr v4, v9

    .line 1286
    aget v1, v8, v0

    aget-object v9, v7, v0

    iget v9, v9, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    if-eq v1, v9, :cond_1

    .line 1287
    const-wide/16 v4, -0x1

    move-wide v0, v4

    .line 1292
    :goto_3
    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    move-wide v11, v0

    move-wide v0, v2

    move-wide v2, v11

    .line 1296
    :goto_4
    cmp-long v2, v2, v0

    if-eqz v2, :cond_5

    .line 1297
    const-wide/16 v1, 0x0

    .line 1298
    array-length v3, v7

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v3, :cond_3

    aget-object v4, v7, v0

    .line 1299
    invoke-virtual {v4}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 1298
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1284
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1275
    :cond_2
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    .line 1301
    :cond_3
    array-length v5, v7

    const/4 v0, 0x0

    move v11, v0

    move-wide v12, v1

    move-wide v0, v12

    move v2, v11

    :goto_6
    if-ge v2, v5, :cond_4

    aget-object v3, v7, v2

    .line 1302
    iget v3, v3, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    int-to-long v3, v3

    add-long/2addr v3, v0

    .line 1301
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-wide v0, v3

    goto :goto_6

    .line 1304
    :cond_4
    array-length v3, v7

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v3, :cond_5

    aget-object v4, v7, v2

    .line 1305
    invoke-virtual {v4}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .line 1304
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1308
    :cond_5
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_6

    .line 1309
    const v0, 0x7fffffff

    .line 1311
    :goto_8
    return v0

    :cond_6
    long-to-int v0, v0

    goto :goto_8

    :cond_7
    move-wide v0, v4

    goto :goto_3

    :cond_8
    move-wide v11, v0

    move-wide v0, v2

    move-wide v2, v11

    goto :goto_4
.end method

.method u(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 637
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    invoke-interface {v0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->D(Ljava/lang/Object;)I

    move-result v0

    .line 638
    invoke-static {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->R(I)I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->values:Ljava/util/Collection;

    .line 1589
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Values;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Values;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;)V

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->values:Ljava/util/Collection;

    goto :goto_0
.end method
