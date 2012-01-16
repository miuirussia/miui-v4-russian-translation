.class final Lcom/google/common/base/Splitter$3;
.super Ljava/lang/Object;
.source "Splitter.java"

# interfaces
.implements Lcom/google/common/base/Splitter$Strategy;


# instance fields
.field final synthetic fN:Ljava/util/regex/Pattern;


# virtual methods
.method public a(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$SplittingIterator;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/common/base/Splitter$3;->fN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 209
    new-instance v1, Lcom/google/common/base/Splitter$3$1;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/google/common/base/Splitter$3$1;-><init>(Lcom/google/common/base/Splitter$3;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;Ljava/util/regex/Matcher;)V

    return-object v1
.end method

.method public bridge synthetic b(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 205
    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/Splitter$3;->a(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$SplittingIterator;

    move-result-object v0

    return-object v0
.end method
