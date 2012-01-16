.class Lcom/google/common/base/Splitter$5;
.super Ljava/lang/Object;
.source "Splitter.java"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field final synthetic fP:Ljava/lang/CharSequence;

.field final synthetic fQ:Lcom/google/common/base/Splitter;


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/common/base/Splitter$5;->fQ:Lcom/google/common/base/Splitter;

    invoke-static {v0}, Lcom/google/common/base/Splitter;->a(Lcom/google/common/base/Splitter;)Lcom/google/common/base/Splitter$Strategy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/Splitter$5;->fQ:Lcom/google/common/base/Splitter;

    iget-object v2, p0, Lcom/google/common/base/Splitter$5;->fP:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2}, Lcom/google/common/base/Splitter$Strategy;->b(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
