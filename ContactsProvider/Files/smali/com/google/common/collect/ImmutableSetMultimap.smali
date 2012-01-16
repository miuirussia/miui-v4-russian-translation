.class public Lcom/google/common/collect/ImmutableSetMultimap;
.super Lcom/google/common/collect/ImmutableMultimap;
.source "ImmutableSetMultimap.java"

# interfaces
.implements Lcom/google/common/collect/SetMultimap;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient nc:Lcom/google/common/collect/ImmutableSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 286
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ImmutableMultimap;-><init>(Lcom/google/common/collect/ImmutableMap;I)V

    .line 287
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 10
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 348
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 349
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    .line 350
    if-gez v4, :cond_0

    .line 351
    new-instance v0, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->fE()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v5

    move v2, v1

    move v3, v1

    .line 357
    :goto_0
    if-ge v2, v4, :cond_4

    .line 358
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    .line 359
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v7

    .line 360
    if-gtz v7, :cond_1

    .line 361
    new-instance v0, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_1
    new-array v8, v7, [Ljava/lang/Object;

    move v0, v1

    .line 365
    :goto_1
    if-ge v0, v7, :cond_2

    .line 366
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v0

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 368
    :cond_2
    invoke-static {v8}, Lcom/google/common/collect/ImmutableSet;->i([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 369
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v9

    array-length v8, v8

    if-eq v9, v8, :cond_3

    .line 370
    new-instance v0, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate key-value pairs exist for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_3
    invoke-virtual {v5, v6, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->k(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 374
    add-int/2addr v3, v7

    .line 357
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 379
    :cond_4
    :try_start_0
    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableMap$Builder;->dW()Lcom/google/common/collect/ImmutableMap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 385
    sget-object v1, Lcom/google/common/collect/ImmutableMultimap$FieldSettersHolder;->oE:Lcom/google/common/collect/Serialization$FieldSetter;

    invoke-virtual {v1, p0, v0}, Lcom/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 386
    sget-object v0, Lcom/google/common/collect/ImmutableMultimap$FieldSettersHolder;->oF:Lcom/google/common/collect/Serialization$FieldSetter;

    invoke-virtual {v0, p0, v3}, Lcom/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;I)V

    .line 387
    return-void

    .line 380
    :catch_0
    move-exception v0

    .line 381
    new-instance v1, Ljava/io/InvalidObjectException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/InvalidObjectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/InvalidObjectException;

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .parameter

    .prologue
    .line 342
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 343
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->a(Lcom/google/common/collect/Multimap;Ljava/io/ObjectOutputStream;)V

    .line 344
    return-void
.end method


# virtual methods
.method public P(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .parameter

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap;->cv:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableSet;

    .line 300
    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->eB()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap;->P(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cz()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSetMultimap;->ei()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap;->P(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public ei()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap;->nc:Lcom/google/common/collect/ImmutableSet;

    .line 332
    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/common/collect/ImmutableMultimap;->cz()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->h(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap;->nc:Lcom/google/common/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic v(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap;->P(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic w()Ljava/util/Set;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSetMultimap;->ei()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic x()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSetMultimap;->ei()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
