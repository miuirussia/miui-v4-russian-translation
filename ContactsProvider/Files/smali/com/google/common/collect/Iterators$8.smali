.class final Lcom/google/common/collect/Iterators$8;
.super Ljava/lang/Object;
.source "Iterators.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic ds:Ljava/util/Iterator;

.field final synthetic dt:Lcom/google/common/base/Function;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lcom/google/common/base/Function;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 723
    iput-object p1, p0, Lcom/google/common/collect/Iterators$8;->ds:Ljava/util/Iterator;

    iput-object p2, p0, Lcom/google/common/collect/Iterators$8;->dt:Lcom/google/common/base/Function;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/google/common/collect/Iterators$8;->ds:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 728
    iget-object v0, p0, Lcom/google/common/collect/Iterators$8;->ds:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 729
    iget-object v1, p0, Lcom/google/common/collect/Iterators$8;->dt:Lcom/google/common/base/Function;

    invoke-interface {v1, v0}, Lcom/google/common/base/Function;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/google/common/collect/Iterators$8;->ds:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 733
    return-void
.end method
