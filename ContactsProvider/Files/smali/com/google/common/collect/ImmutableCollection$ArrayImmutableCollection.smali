.class Lcom/google/common/collect/ImmutableCollection$ArrayImmutableCollection;
.super Lcom/google/common/collect/ImmutableCollection;
.source "ImmutableCollection.java"


# instance fields
.field private final elements:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    .line 224
    iput-object p1, p0, Lcom/google/common/collect/ImmutableCollection$ArrayImmutableCollection;->elements:[Ljava/lang/Object;

    .line 225
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableCollection$ArrayImmutableCollection;->s()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public s()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$ArrayImmutableCollection;->elements:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->e([Ljava/lang/Object;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$ArrayImmutableCollection;->elements:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method
