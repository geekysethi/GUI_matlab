function varargout = demo_axes2(varargin)
% DEMO_AXES2 MATLAB code for demo_axes2.fig
%      DEMO_AXES2, by itself, creates a new DEMO_AXES2 or raises the existing
%      singleton*.
%
%      H = DEMO_AXES2 returns the handle to a new DEMO_AXES2 or the handle to
%      the existing singleton*.
%
%      DEMO_AXES2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DEMO_AXES2.M with the given input arguments.
%
%      DEMO_AXES2('Property','Value',...) creates a new DEMO_AXES2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before demo_axes2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to demo_axes2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help demo_axes2

% Last Modified by GUIDE v2.5 29-Jun-2015 17:45:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @demo_axes2_OpeningFcn, ...
                   'gui_OutputFcn',  @demo_axes2_OutputFcn, ...
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


% --- Executes just before demo_axes2 is made visible.
function demo_axes2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to demo_axes2 (see VARARGIN)

% Choose default command line output for demo_axes2
handles.output = hObject;
global x count

count=0;
x=-4*pi:pi/10:2*pi;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes demo_axes2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = demo_axes2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in plot.
function plot_Callback(hObject, eventdata, handles)
% hObject    handle to plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global count x
count=count+1;

if(count==1)
    y=sin(x);
elseif(count==2)
    y=cos(x);
elseif(count==3)
    y=tan(x);
    count=0;
end
axes(handles.axes1);
plot(x,y);


