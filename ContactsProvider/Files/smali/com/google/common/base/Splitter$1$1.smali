.class Lcom/google/common/base/Splitter$1$1;
.super Lcom/google/common/base/Splitter$SplittingIterator;
.source "Splitter.java"


# instance fields
.field final synthetic vX:Lcom/google/common/base/Splitter$1;


# direct methods
.method constructor <init>(Lcom/google/common/base/Splitter$1;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/common/base/Splitter$1$1;->vX:Lcom/google/common/base/Splitter$1;

    invoke-direct {p0, p2, p3}, Lcom/google/common/base/Splitter$SplittingIterator;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method M(I)I
    .locals 2
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/common/base/Splitter$1$1;->vX:Lcom/google/common/base/Splitter$1;

    iget-object v0, v0, Lcom/google/common/base/Splitter$1;->fS:Lcom/google/common/base/CharMatcher;

    iget-object v1, p0, Lcom/google/common/base/Splitter$SplittingIterator;->pd:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/base/CharMatcher;->a(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method N(I)I
    .locals 1
    .parameter

    .prologue
    .line 141
    add-int/lit8 v0, p1, 0x1

    return v0
.end method
