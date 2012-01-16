.class public final Lcom/google/common/primitives/UnsignedBytes;
.super Ljava/lang/Object;
.source "UnsignedBytes.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(BB)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 82
    and-int/lit16 v0, p0, 0xff

    and-int/lit16 v1, p1, 0xff

    sub-int/2addr v0, v1

    return v0
.end method
