.class Lcom/google/common/collect/Multimaps$CustomSetMultimap;
.super Lcom/google/common/collect/AbstractSetMultimap;
.source "Multimaps.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient ga:Lcom/google/common/base/Supplier;


# direct methods
.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 278
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 279
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Supplier;

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$CustomSetMultimap;->ga:Lcom/google/common/base/Supplier;

    .line 280
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 281
    invoke-virtual {p0, v0}, Lcom/google/common/collect/Multimaps$CustomSetMultimap;->b(Ljava/util/Map;)V

    .line 282
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 270
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 271
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$CustomSetMultimap;->ga:Lcom/google/common/base/Supplier;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 272
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$CustomSetMultimap;->fs()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 273
    return-void
.end method


# virtual methods
.method protected bridge synthetic J()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$CustomSetMultimap;->cb()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected cb()Ljava/util/Set;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$CustomSetMultimap;->ga:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
