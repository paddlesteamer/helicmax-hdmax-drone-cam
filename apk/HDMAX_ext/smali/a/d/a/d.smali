.class public La/d/a/d;
.super La/d/a/b;
.source "GoalRow.java"


# direct methods
.method public constructor <init>(La/d/a/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, La/d/a/b;-><init>(La/d/a/c;)V

    return-void
.end method


# virtual methods
.method public a(La/d/a/h;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, La/d/a/b;->a(La/d/a/h;)V

    .line 2
    iget v0, p1, La/d/a/h;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, La/d/a/h;->j:I

    return-void
.end method
