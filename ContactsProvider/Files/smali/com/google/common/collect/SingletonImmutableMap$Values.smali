.class Lcom/google/common/collect/SingletonImmutableMap$Values;
.super Lcom/google/common/collect/ImmutableCollection;
.source "SingletonImmutableMap.java"


# instance fields
.field final singleValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/google/common/collect/SingletonImmutableMap$Values;->singleValue:Ljava/lang/Object;

    .line 105
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableMap$Values;->singleValue:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/google/common/collect/SingletonImmutableMap$Values;->s()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public s()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableMap$Values;->singleValue:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->s(Ljava/lang/Object;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method
