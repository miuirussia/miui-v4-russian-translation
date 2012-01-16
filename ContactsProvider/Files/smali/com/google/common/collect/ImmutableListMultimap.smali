.class public Lcom/google/common/collect/ImmutableListMultimap;
.super Lcom/google/common/collect/ImmutableMultimap;
.source "ImmutableListMultimap.java"

# interfaces
.implements Lcom/google/common/collect/ListMultimap;


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 255
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ImmutableMultimap;-><init>(Lcom/google/common/collect/ImmutableMap;I)V

    .line 256
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 10
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 302
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 303
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    .line 304
    if-gez v4, :cond_0

    .line 305
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

    .line 307
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->fE()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v5

    move v2, v1

    move v3, v1

    .line 311
    :goto_0
    if-ge v2, v4, :cond_3

    .line 312
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    .line 313
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v7

    .line 314
    if-gtz v7, :cond_1

    .line 315
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

    .line 318
    :cond_1
    new-array v8, v7, [Ljava/lang/Object;

    move v0, v1

    .line 319
    :goto_1
    if-ge v0, v7, :cond_2

    .line 320
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v0

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 322
    :cond_2
    invoke-static {v8}, Lcom/google/common/collect/ImmutableList;->f([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->k(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 323
    add-int/2addr v3, v7

    .line 311
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 328
    :cond_3
    :try_start_0
    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableMap$Builder;->dW()Lcom/google/common/collect/ImmutableMap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 334
    sget-object v1, Lcom/google/common/collect/ImmutableMultimap$FieldSettersHolder;->oE:Lcom/google/common/collect/Serialization$FieldSetter;

    invoke-virtual {v1, p0, v0}, Lcom/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 335
    sget-object v0, Lcom/google/common/collect/ImmutableMultimap$FieldSettersHolder;->oF:Lcom/google/common/collect/Serialization$FieldSetter;

    invoke-virtual {v0, p0, v3}, Lcom/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;I)V

    .line 336
    return-void

    .line 329
    :catch_0
    move-exception v0

    .line 330
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
    .line 296
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 297
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->a(Lcom/google/common/collect/Multimap;Ljava/io/ObjectOutputStream;)V

    .line 298
    return-void
.end method


# virtual methods
.method public bridge synthetic d(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableListMultimap;->w(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableListMultimap;->w(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic v(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableListMultimap;->w(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public w(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .parameter

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap;->cv:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableList;

    .line 269
    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->dO()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :cond_0
    return-object v0
.end method
