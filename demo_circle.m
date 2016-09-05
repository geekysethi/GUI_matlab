function varargout = demo_circle(varargin)
% DEMO_CIRCLE MATLAB code for demo_circle.fig
%      DEMO_CIRCLE, by itself, creates a new DEMO_CIRCLE or raises the existing
%      singleton*.
%
%      H = DEMO_CIRCLE returns the handle to a new DEMO_CIRCLE or the handle to
%      the existing singleton*.
%
%      DEMO_CIRCLE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DEMO_CIRCLE.M with the given input arguments.
%
%      DEMO_CIRCLE('Property','Value',...) creates a new DEMO_CIRCLE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before demo_circle_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to demo_circle_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help demo_circle

% Last Modified by GUIDE v2.5 30-Jun-2015 17:20:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @demo_circle_OpeningFcn, ...
                   'gui_OutputFcn',  @demo_circle_OutputFcn, ...
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


% --- Executes just before demo_circle is made visible.
function demo_circle_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to demo_circle (see VARARGIN)

% Choose default command line output for demo_circle
handles.output = hObject;

global t i c j
c='k';
t=0:pi/100:2*pi;
i=0;
j=0;


% Update handles structure
guidata(hObject, handles);

% UIWAIT makes demo_circle wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = demo_circle_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global t i c;

axis equal
hold on
i=i+1;
x=i*cos(t);
y=i*sin(t);
axes(handles.axes1);
plot(x,y,c);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global i c
i=0;
cla reset
c='k';





% --- Executes on button press in red.
function red_Callback(hObject, eventdata, handles)
% hObject    handle to red (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global c
c='r';



% --- Executes on button press in green.
function green_Callback(hObject, eventdata, handles)
% hObject    handle to green (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global c
c='g';



% --- Executes on button press in blue.
function blue_Callback(hObject, eventdata, handles)
% hObject    handle to blue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global c
c='b';



% --- Executes on button press in multi.
function multi_Callback(hObject, eventdata, handles)
% hObject    handle to multi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global c color t i j;

axis equal;
hold on;
i=i+1;
j=j+1;
color=['m' 'g' 'b' 'k' 'r' 'y' 'c' ];

    c=color(j);

x=i*cos(t);
y=i*sin(t);
axes(handles.axes1);
plot(x,y,c);
    if(j==7)
        j=0;
    end


% --- Executes on button press in automatic.
function automatic_Callback(hObject, eventdata, handles)
% hObject    handle to automatic (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global c color t i j;

axis equal;
hold on;
for i=1:inf
if(i==0)
        break;
    end
j=j+1;
color=['m' 'g' 'b' 'k' 'r' 'y' 'c' ];

    c=color(j);

x=i*cos(t);
y=i*sin(t);
axes(handles.axes1);
plot(x,y,c);
    if(j==7)
        j=0;
    end
    if(i==0)
        break;
    end
end


% --- Executes on button press in rgb.
function rgb_Callback(hObject, eventdata, handles)
% hObject    handle to rgb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


global c color t i j;

axis equal;
hold on;
for i=1:inf
if(i==0)
        break;
    end
j=j+1;
color=['r' 'g' 'b' ];

    c=color(j);

x=i*cos(t);
y=i*sin(t);
axes(handles.axes1);
plot(x,y,c);
    if(j==3)
        j=0;
    end
    if(i==0)
        break;
    end
end
