.class Lcn/nubia/commonui/widget/NubiaMorePopup$1;
.super Ljava/lang/Object;
.source "NubiaMorePopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/widget/NubiaMorePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/widget/NubiaMorePopup;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/NubiaMorePopup;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$1;->this$0:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$1;->this$0:Lcn/nubia/commonui/widget/NubiaMorePopup;

    # invokes: Lcn/nubia/commonui/widget/NubiaMorePopup;->startEntryAnimation()V
    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->access$000(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    .line 122
    return-void
.end method
