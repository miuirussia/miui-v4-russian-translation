.class public final Lcom/google/common/base/Splitter;
.super Ljava/lang/Object;
.source "Splitter.java"


# instance fields
.field private final dB:Lcom/google/common/base/CharMatcher;

.field private final dC:Z

.field private final dD:Lcom/google/common/base/Splitter$Strategy;


# direct methods
.method static synthetic a(Lcom/google/common/base/Splitter;)Lcom/google/common/base/Splitter$Strategy;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/common/base/Splitter;->dD:Lcom/google/common/base/Splitter$Strategy;

    return-object v0
.end method

.method static synthetic b(Lcom/google/common/base/Splitter;)Lcom/google/common/base/CharMatcher;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/common/base/Splitter;->dB:Lcom/google/common/base/CharMatcher;

    return-object v0
.end method

.method static synthetic c(Lcom/google/common/base/Splitter;)Z
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/google/common/base/Splitter;->dC:Z

    return v0
.end method
