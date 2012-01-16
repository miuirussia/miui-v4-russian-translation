.class Lcom/google/common/collect/Multimaps$CustomMultimap;
.super Lcom/google/common/collect/AbstractMultimap;
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
    .line 128
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 129
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Supplier;

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$CustomMultimap;->ga:Lcom/google/common/base/Supplier;

    .line 130
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 131
    invoke-virtual {p0, v0}, Lcom/google/common/collect/Multimaps$CustomMultimap;->b(Ljava/util/Map;)V

    .line 132
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 120
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 121
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$CustomMultimap;->ga:Lcom/google/common/base/Supplier;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 122
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$CustomMultimap;->fs()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 123
    return-void
.end method


# virtual methods
.method protected J()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$CustomMultimap;->ga:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method
