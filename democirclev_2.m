function varargout = democirclev_2(varargin)
% DEMOCIRCLEV_2 MATLAB code for democirclev_2.fig
%      DEMOCIRCLEV_2, by itself, creates a new DEMOCIRCLEV_2 or raises the existing
%      singleton*.
%
%      H = DEMOCIRCLEV_2 returns the handle to a new DEMOCIRCLEV_2 or the handle to
%      the existing singleton*.
%
%      DEMOCIRCLEV_2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DEMOCIRCLEV_2.M with the given input arguments.
%
%      DEMOCIRCLEV_2('Property','Value',...) creates a new DEMOCIRCLEV_2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before democirclev_2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to democirclev_2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help democirclev_2

% Last Modified by GUIDE v2.5 02-Jul-2015 15:48:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @democirclev_2_OpeningFcn, ...
                   'gui_OutputFcn',  @democirclev_2_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before democirclev_2 is made visible.
function democirclev_2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to democirclev_2 (see VARARGIN)

% Choose default command line output for democirclev_2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
global i c t j v1 v2 v3 v4 v5  c2 k

v1=0;
v2=0;
v3=0;
v4=0;
v5=0;

c2=0;
c='k';
t=0:pi/100:2*pi;
i=0;
j=0;
k=0;

% UIWAIT makes democirclev_2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = democirclev_2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in red.
function red_Callback(hObject, eventdata, handles)
% hObject    handle to red (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of red
global v1 v2 v3 v4 v5
v1=get(handles.red,'value');
if(v1==1)
    v2=0;
    v3=0;
    v4=0;
    v5=0;
    
    set(handles.green,'value',0);
    set(handles.blue,'value',0);
    set(handles.multi,'value',0);
    set(handles.rgb,'value',0);
    
       
end


% --- Executes on button press in green.
function green_Callback(hObject, eventdata, handles)
% hObject    handle to green (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of green
global v1 v2 v3 v4 v5
v2=get(handles.green,'value');
if(v2==1)
    v1=0;
    v3=0;
    v4=0;
    v5=0;
    
    set(handles.red,'value',0);
    set(handles.blue,'value',0);
    set(handles.multi,'value',0);
    set(handles.rgb,'value',0);
end

% --- Executes on button press in blue.
function blue_Callback(hObject, eventdata, handles)
% hObject    handle to blue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of blue
global v1 v2 v3 v4 v5
v3=get(handles.blue,'value');
if(v3==1)
    v1=0;
    v2=0;
    v4=0;
    v5=0;
    
    set(handles.green,'value',0);
    set(handles.red,'value',0);
    set(handles.multi,'value',0);
    set(handles.rgb,'value',0);
end

% --- Executes on button press in multi.
function multi_Callback(hObject, eventdata, handles)
% hObject    handle to multi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of multi
global v1 v2 v3 v4 v5
v4=get(handles.multi,'value');
if(v4==1)
    v1=0;
    v2=0;
    v3=0;
    v5=0;
    
    set(handles.red,'value',0);
    set(handles.blue,'value',0);
    set(handles.green,'value',0);
    set(handles.rgb,'value',0);
end

% --- Executes on button press in checkbox1.


% --- Executes on button press in manual.
function manual_Callback(hObject, eventdata, handles)
% hObject    handle to manual (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global c i t v1 v2 v3 v4 v5  c2 j k x y  color
axis equal 
hold on

i=i+1;

x=i*cos(t);
y=i*sin(t);

if(v1==1)
c='r';    
elseif (v2==1)
    c='g';
    
elseif (v3==1)
    c='b';

    elseif (v5==1)
        
k=k+1;
color=['r' 'g' 'b'  ];

    c=color(k);
    if(k==3)
        k=0;
    end

    
    
    
    
elseif (v4==1)
    
j=j+1;
color=['m' 'g' 'b' 'k' 'r' 'y' 'c' ];

    c=color(j);
    if(j==7)
        j=0;
    end

    
    
else
c='k';

end

    hold on
    axis equal
    axes(handles.axes1)
    plot(x,y,c);


if(c2==1)
    hold on
    axis equal
    axes(handles.axes4)
    plot(x,y,c);
end






% --- Executes on button press in boom.
function boom_Callback(hObject, eventdata, handles)
% hObject    handle to boom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global c i t v1 v2 v3 v4 v5  j k x y color  c2
axis equal 
hold on

i=i+1;

    for i=1:inf
        
   if(i==0)
    break;
    end  
hold on
    
if(v1==1)
c='r';    
elseif (v2==1)
    c='g';
    
elseif (v3==1)
    c='b';
elseif (v5==1)
        
k=k+1;
color=['r' 'g' 'b'  ];

    c=color(k);
    if(k==3)
        k=0;
    end  
elseif (v4==1)
    
j=j+1;
color=['m' 'g' 'b' 'k' 'r' 'y' 'c' ];

    c=color(j);
    if(j==7)
        j=0;
    end  
else
c='k';
end

x=i*cos(t);
y=i*sin(t);

    hold on
    axis equal
    axes(handles.axes1)
    plot(x,y,c);



if(c2==1)
    hold on
    axis equal
    axes(handles.axes4)
    plot(x,y,c);
end
 

end






% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global i c v1 v2 v3 v4 c2
i=0;
 cla(handles.axes1);
  cla(handles.axes4);
   
   
   v1=0;
   v2=0;
   v3=0;
   v4=0;
   c2=0;
c='k';

 set(handles.green,'value',0);
    set(handles.blue,'value',0);
    set(handles.multi,'value',0);
    set(handles.rgb,'value',0);
    set(handles.red,'value',0);
    set(handles.checkbox2,'value',0);

% --- Executes on button press in rgb.
function rgb_Callback(hObject, eventdata, handles)
% hObject    handle to rgb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rgb



global v1 v2 v3 v4 v5
v5=get(handles.rgb,'value');
if(v5==1)
    v2=0;
    v3=0;
    v4=0;
    v1=0;
    
    set(handles.green,'value',0);
    set(handles.blue,'value',0);
    set(handles.multi,'value',0);
    set(handles.red,'value',0);
end


% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2
global c2 
c2=get(handles.checkbox2,'value');


