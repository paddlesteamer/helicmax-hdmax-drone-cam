.class public La/d/b/d;
.super Landroid/view/ViewGroup;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/d/b/d$a;
    }
.end annotation


# instance fields
.field public b:La/d/b/c;


# virtual methods
.method public generateDefaultLayoutParams()La/d/b/d$a;
    .locals 2

    .line 2
    new-instance v0, La/d/b/d$a;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, La/d/b/d$a;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, La/d/b/d;->generateDefaultLayoutParams()La/d/b/d$a;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)La/d/b/d$a;
    .locals 2

    .line 2
    new-instance v0, La/d/b/d$a;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, La/d/b/d$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, La/d/b/d;->generateLayoutParams(Landroid/util/AttributeSet;)La/d/b/d$a;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 3
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-direct {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getConstraintSet()La/d/b/c;
    .locals 1

    .line 1
    iget-object v0, p0, La/d/b/d;->b:La/d/b/c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, La/d/b/c;

    invoke-direct {v0}, La/d/b/c;-><init>()V

    iput-object v0, p0, La/d/b/d;->b:La/d/b/c;

    .line 3
    :cond_0
    iget-object v0, p0, La/d/b/d;->b:La/d/b/c;

    invoke-virtual {v0, p0}, La/d/b/c;->a(La/d/b/d;)V

    .line 4
    iget-object v0, p0, La/d/b/d;->b:La/d/b/c;

    return-object v0
.end method

.method public onLayout(ZIIII)V
    .locals 0

    return-void
.end method
