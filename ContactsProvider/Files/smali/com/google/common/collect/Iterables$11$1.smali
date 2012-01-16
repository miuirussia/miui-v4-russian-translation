.class Lcom/google/common/collect/Iterables$11$1;
.super Ljava/lang/Object;
.source "Iterables.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic gY:Ljava/util/ListIterator;

.field final synthetic gZ:Lcom/google/common/collect/Iterables$11;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Iterables$11;Ljava/util/ListIterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 694
    iput-object p1, p0, Lcom/google/common/collect/Iterables$11$1;->gZ:Lcom/google/common/collect/Iterables$11;

    iput-object p2, p0, Lcom/google/common/collect/Iterables$11$1;->gY:Ljava/util/ListIterator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/google/common/collect/Iterables$11$1;->gY:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/google/common/collect/Iterables$11$1;->gY:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/google/common/collect/Iterables$11$1;->gY:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 703
    return-void
.end method
