.class final Lcom/google/common/base/CharMatcher$8;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# instance fields
.field final synthetic oi:C


# direct methods
.method constructor <init>(C)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-char p1, p0, Lcom/google/common/base/CharMatcher$8;->oi:C

    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 1
    .parameter

    .prologue
    .line 381
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$8;->oi:C

    invoke-virtual {p1, v0}, Lcom/google/common/base/CharMatcher;->a(C)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object p1

    goto :goto_0
.end method

.method public a(C)Z
    .locals 1
    .parameter

    .prologue
    .line 370
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$8;->oi:C

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 368
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method
