.class public final Lcom/google/common/io/PatternFilenameFilter;
.super Ljava/lang/Object;
.source "PatternFilenameFilter.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field private final ot:Ljava/util/regex/Pattern;


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/common/io/PatternFilenameFilter;->ot:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
