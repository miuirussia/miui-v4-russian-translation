.class public final Lcom/google/common/base/Throwables;
.super Ljava/lang/Object;
.source "Throwables.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Exception;Z)Ljava/lang/Exception;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 221
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 222
    if-nez v0, :cond_0

    .line 223
    throw p0

    .line 225
    :cond_0
    if-eqz p1, :cond_1

    .line 226
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 227
    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 228
    array-length v3, v1

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/StackTraceElement;

    .line 229
    array-length v4, v1

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    array-length v1, v1

    array-length v4, v2

    invoke-static {v2, v5, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 233
    :cond_1
    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_2

    .line 234
    check-cast v0, Ljava/lang/Exception;

    throw v0

    .line 236
    :cond_2
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_3

    .line 237
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 240
    :cond_3
    throw p0
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/Class;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 55
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    const-class v0, Ljava/lang/Error;

    invoke-static {p0, v0}, Lcom/google/common/base/Throwables;->a(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 73
    const-class v0, Ljava/lang/RuntimeException;

    invoke-static {p0, v0}, Lcom/google/common/base/Throwables;->a(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 74
    return-void
.end method

.method public static d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1
    .parameter

    .prologue
    .line 146
    invoke-static {p0}, Lcom/google/common/base/Throwables;->c(Ljava/lang/Throwable;)V

    .line 147
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
