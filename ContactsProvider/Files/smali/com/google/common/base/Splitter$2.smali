.class final Lcom/google/common/base/Splitter$2;
.super Ljava/lang/Object;
.source "Splitter.java"

# interfaces
.implements Lcom/google/common/base/Splitter$Strategy;


# instance fields
.field final synthetic fT:Ljava/lang/String;


# virtual methods
.method public a(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$SplittingIterator;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 163
    new-instance v0, Lcom/google/common/base/Splitter$2$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/base/Splitter$2$1;-><init>(Lcom/google/common/base/Splitter$2;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public bridge synthetic b(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 160
    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/Splitter$2;->a(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$SplittingIterator;

    move-result-object v0

    return-object v0
.end method
